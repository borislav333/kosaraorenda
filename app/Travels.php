<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Travels extends Model
{
    public function getRouteKeyName()
    {
        return 'slug';
    }
}
