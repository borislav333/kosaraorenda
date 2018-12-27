<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class EventsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        Carbon::setLocale('bg');
        //return parent::toArray($request);
            return [
              'id'=>$this->id,
                'title'=>$this->title,
                'slug'=>$this->slug,
                'body'=>$this->body,
                'user_id'=>$this->user_id,
                'created_at'=>$this->created_at->diffForHumans(),
                'updated_at'=>$this->updated_at->diffForHumans(),
            ];
    }
}
