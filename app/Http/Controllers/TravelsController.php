<?php

namespace App\Http\Controllers;

use App\Http\Resources\TravelsResource;
use App\Travels;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Input;

class TravelsController extends BaseCrudController
{
    public function __construct()
    {
        parent::__construct();
        $this->model='Travels';
    }

    public function index(){
        $class='App\Travels';
       /* return TravelsResource::collection($class::latest()->whereMonth('created_at',Input::get('a'))->where(['country'=>'bg'])->paginate(3));*/
        return TravelsResource::collection($class::latest()->whereMonth('created_at',1)->where(['country'=>'bg'])->paginate(3));
    }

    public function indexOut(Travels $travels){
        return TravelsResource::collection($travels->latest()->where(['country'=>'out'])->paginate(3));
    }
    public function indexOut2($month,$year,Travels $travels){

            return TravelsResource::collection($travels->latest()->where(['country'=>'bg'])->where('month',$month)->where('year',$year)->paginate(3));
    }


}
