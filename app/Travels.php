<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Travels extends Model
{

    protected $fillable=['title','body','user_id','country','slug'];
    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
}
