<?php

use Faker\Generator as Faker;

$factory->define(App\Advices::class, function (Faker $faker) {
    $title=$faker->sentence();
    return [
        'title'=>$title,
        'slug'=>str_slug($title),
        'body'=>$faker->text(rand(500,1500)),
        'user_id'=>function (){
        return \App\User::all()->random();
        }
    ];
});
