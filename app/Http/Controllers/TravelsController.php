<?php

namespace App\Http\Controllers;

use App\Http\Resources\TravelsResource;
use App\Travels;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class TravelsController extends Controller
{
    public function __construct()
    {
        $this->middleware('check.admin',['except'=>['index','show']]);
        $this->middleware('jwt.verify',['except'=>['index','show']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @param Travels $travels
     * @param string $country
     */
    public function index(Travels $travels)
    {
            return TravelsResource::collection($travels->latest()->where(['country'=>'bg'])->paginate(3));
    }
    public function indexOut(Travels $travels){
        return TravelsResource::collection($travels->latest()->where(['country'=>'out'])->paginate(3));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Travels $travels,Request $request)
    {
        $request['slug']=str_slug($request->title);
        $travels->create($request->all());
        return \response('Created',Response::HTTP_ACCEPTED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Travels  $travels
     * @return \Illuminate\Http\Response
     */
    public function show(Travels $travels,$slug)
    {
        return new TravelsResource($travels->where('slug',$slug)->first());
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Travels  $travels
     * @return \Illuminate\Http\Response
     */
    public function edit(Travels $travels)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Travels  $travels
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Travels $travels,$slug)
    {
        $request['slug']=str_slug($request->title);
        $travels->where(['slug'=>$slug])->first()->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Travels  $travels
     * @return \Illuminate\Http\Response
     */
    public function destroy(Travels $travels,$slug)
    {
        $travels->where('slug',$slug)->delete();
    }
}
