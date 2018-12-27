<?php

namespace App\Http\Controllers;

use App\Events;
use App\Http\Resources\EventsResource;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class EventsController extends Controller
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
        /*return EventsResource::collection(Events::latest()->get());*/
        return EventsResource::collection(Events::latest()->paginate(3));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Events $events,Request $request)
    {
        $request['slug']=str_slug($request->title);
        $events->create($request->all());
        return response('Created',Response::HTTP_CREATED);
    }

    public function getEventsWithSlug(Events $events,$slug){
        return $events->where('slug',$slug)->first();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Events  $events
     * @return \Illuminate\Http\Response
     */
    public function show(Events $events,$slug)
    {
        return new EventsResource($this->getEventsWithSlug($events,$slug));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Events  $events
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Events $events,$slug)
    {
        $request['slug']=str_slug($request->title);
        $update=$this->getEventsWithSlug($events,$slug)->update($request->all());
        //$update=$events->update($request->all());
        return \response('Updated',Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Events  $events
     * @return \Illuminate\Http\Response
     */
    public function destroy(Events $events,$slug)
    {
        $this->getEventsWithSlug($events,$slug)->delete();
        return response('Deleted',201);
    }
}
