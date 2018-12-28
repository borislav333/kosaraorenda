<?php

namespace App\Http\Controllers;

use App\Advices;
use App\Http\Resources\AdvicesResource;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class AdvicesController extends BaseCrudController
{
    public function __construct()
    {
        parent::__construct();
        $this->model='Advices';
    }
}
