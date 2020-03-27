<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Category as CategoryAlias;
use Bezhanov\Faker\Provider\Commerce;
use Faker\Generator as Faker;

$factory->define(CategoryAlias::class, function (Faker $faker) {
    $faker->addProvider(new Commerce($faker));
    return [
        'name' => $faker->unique()->department,
        'description' => $faker->realText(),
    ];
});
