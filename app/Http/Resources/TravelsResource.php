<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class TravelsResource extends JsonResource
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
        return [
          'id'=>$this->id,
          'slug'=>$this->slug,
          'title'=>$this->title,
          'body'=>$this->body,
            'user_id'=>$this->user_id,
          'created_at'=>$this->created_at->diffForHumans(),
          'updated_at'=>$this->updated_at->diffForHumans(),
        ];
    }
}
