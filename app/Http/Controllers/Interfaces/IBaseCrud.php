<?php
/**
 * Created by PhpStorm.
 * User: Borislav
 * Date: 29.12.2018 г.
 * Time: 23:24 ч.
 */

namespace App\Http\Controllers\Interfaces;


use Illuminate\Http\Request;

interface IBaseCrud
{
    public function __construct();
    public function index();
    public function store(Request $request);
    public function show($slug);
    public function update(Request $request,$slug);
    public function destroy($slug);
}