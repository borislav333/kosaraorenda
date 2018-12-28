<?php

namespace App\Http\Controllers;

use App\Http\Resources\TravelsResource;
use App\Travels;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class TravelsController extends BaseCrudController
{
    public function __construct()
    {
        parent::__construct();
        $this->model='Travels';
    }

    public function indexOut(Travels $travels){
        return TravelsResource::collection($travels->latest()->where(['country'=>'out'])->paginate(3));
    }


}
