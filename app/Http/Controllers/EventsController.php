<?php

namespace App\Http\Controllers;

use App\Events;
use App\Http\Resources\EventsResource;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class EventsController extends BaseCrudController
{
    public function __construct()
    {
        parent::__construct();
        $this->model='Events';
        $this->obj='App\Events';
    }


}
