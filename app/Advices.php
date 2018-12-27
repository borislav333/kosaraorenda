<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Advices extends Model
{
    protected $fillable=['title','body','slug','user_id'];
    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

}
