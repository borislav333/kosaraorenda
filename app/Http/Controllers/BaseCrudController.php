<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Interfaces\IBaseCrud;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\HttpException;

class BaseCrudController extends Controller implements IBaseCrud
{
    protected $model;

    public function __construct()
    {
        $this->middleware('check.admin',['except'=>['index','show']]);
        $this->middleware('jwt.verify',['except'=>['index','show']]);

    }

    private function getEventsWithSlug($slug){
        return $this->getClass()::where('slug',$slug)->first();
    }

    private function getClass():string {
        return 'App\\'.$this->model;
    }

    private function getResource():string {
        return 'App\Http\Resources\\'.$this->model.'Resource';
    }
    private function validateRequest($request){
        $validator=Validator::make($request->all(),[
            'title'=>'required|string|min:3',
            'body'=>'required|string|min:40',
        ]);
        return $validator;
    }
    public function index()
    {
        return $this->getResource()::collection($this->getClass()::latest()->paginate(3));

    }

    public function store(Request $request)
    {
        if(!auth()->user()->isAdmin) {
            return new HttpException(403,'You are not administrator!');
        }

            $validator=$this->validateRequest($request);
            if($validator->fails()){
                return response(['errors'=>$validator->errors()],400);
            }
            $request['slug']=str_slug($request->title);

            $relation=strtolower($this->model);
            auth()->user()->$relation()->create($request->all());
            return response('Created',Response::HTTP_CREATED);

    }

    public function show(string $slug)
    {
        $res=$this->getResource();
        $class=$this->getEventsWithSlug($slug);
        return new $res($class);
    }

    public function update(Request $request,$slug)
    {
        if(!auth()->user()->isAdmin) {
            return new HttpException(403,'You are not administrator!');
        }

        $validator = $this->validateRequest($request);
        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 400);
        }
        $this->getEventsWithSlug($slug)->update($request->all());
        return \response($request->all(), Response::HTTP_ACCEPTED);
    }

    public function destroy(string $slug)
    {
        if(!auth()->user()->isAdmin) {
            return new HttpException(403,'You are not administrator!');
        }
            $this->getEventsWithSlug($slug)->delete();
            return response('Deleted', 201);
    }
}
