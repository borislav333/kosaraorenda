<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;


class AdvicesResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        //return parent::toArray($request);
        Carbon::setLocale('bg');
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'slug'=>$this->slug,
           'body'=>$this->body,
           'user_id'=>$this->user_id,
           'created_at'=>$this->created_at->diffForHumans(),
        ];
    }
}
