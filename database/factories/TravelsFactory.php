<?php

use Faker\Generator as Faker;

$factory->define(App\Travels::class, function (Faker $faker) {
    $title=$faker->sentence();
    return [
        'slug'=>str_slug($title),
        'title'=>$title,
        'body'=>$faker->text(1000),
        'country'=>'bg',
        'user_id'=>function(){
            return \App\User::all()->random();
        }
    ];
});
