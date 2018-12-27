<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory(\App\User::class,2)->create()->each(function ($user){
            $user->advices()->saveMany(factory(\App\Advices::class,3)->make());
            $user->events()->saveMany(factory(\App\Events::class,3)->make());
            $user->travels()->saveMany(factory(\App\Travels::class,3)->make());
        });


    }
}
