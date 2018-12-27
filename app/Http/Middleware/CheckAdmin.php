<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

class CheckAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        /*(!auth()->user()->isAdmin===1) ? (false) : ($next($request));*/
       /* if(!JWTAuth::parseToken()->authenticate()->isAdmin==true){
            return response()->exception->getMessage();
        }
        else{
            return $next($request);
        }*/
        return $next($request);
    }
}
