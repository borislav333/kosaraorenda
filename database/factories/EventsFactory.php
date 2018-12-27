<?php

use Faker\Generator as Faker;

$factory->define(\App\Events::class, function (Faker $faker) {
    $title=$faker->sentence();
    return [
        'slug'=>str_slug($title),
        'title'=>$title,
        'body'=>$faker->text(1000),
        'user_id'=>function(){
            return \App\User::all()->random();
        }
    ];
});
