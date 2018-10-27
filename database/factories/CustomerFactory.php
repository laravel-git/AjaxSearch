<?php

use Faker\Generator as Faker;

$factory->define(App\Customer::class, function (Faker $faker) {
    return [
        'firstname'=>$faker->firstName,
        'lastname'=>$faker->lastname,
        'email'=>$faker->email,
        'phone'=>$faker->phoneNumber
    ];
});
