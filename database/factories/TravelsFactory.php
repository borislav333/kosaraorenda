<?php

use Faker\Generator as Faker;

$factory->define(App\Travels::class, function (Faker $faker) {
    $name=$faker->sentence();
    return [
        'slug'=>str_slug($name),
        'name'=>$name,
        'body'=>$faker->text(1000),
        'user_id'=>function(){
        return \App\User::all()->random();
        }
    ];
});
