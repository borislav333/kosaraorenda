<?php

namespace App\Http\Controllers;

use App\Advices;
use App\Http\Resources\AdvicesResource;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class AdvicesController extends Controller
{
    public function __construct()
    {
        $this->middleware('check.admin',['except'=>['index','show']]);
        $this->middleware('jwt.verify',['except'=>['index','show']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return AdvicesResource::collection(Advices::latest()->paginate(3));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Advices $advices,Request $request)
    {
        $request['slug']=str_slug($request->title);
        $advices->create($request->all());
        return response('Created',Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Advices  $advices
     * @return \Illuminate\Http\Response
     */
    public function show(Advices $advices,$slug)
    {
        return new AdvicesResource($advices->where('slug',$slug)->first());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Advices  $advices
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Advices $advices,$slug)
    {
        $request['slug']=str_slug($request->title);
        return $advices->where('slug',$slug)->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Advices  $advices
     * @return \Illuminate\Http\Response
     */
    public function destroy(Advices $advices,$slug)
    {
       $advices->where('slug',$slug)->delete();
       return \response('Deleted',201);
    }
}
