<?php

namespace App\Http\Controllers;

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
     * @return void
     */
    public function index(Travels $travels)
    {
        return $travels->latest()->paginate(3);
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
        $request['slug']=$request->title;
        $travels->create($request->all());
        return \response('Created',Response::HTTP_ACCEPTED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Travels  $travels
     * @return \Illuminate\Http\Response
     */
    public function show(Travels $travels)
    {
        //
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
    public function update(Request $request, Travels $travels)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Travels  $travels
     * @return \Illuminate\Http\Response
     */
    public function destroy(Travels $travels)
    {
        //
    }
}
