<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Category;
use App\Product as ProductAlias;
use Bezhanov\Faker\Provider\Commerce;
use Faker\Generator as Faker;

$factory->define(ProductAlias::class, function (Faker $faker) {
    $faker->addProvider(new Commerce($faker));
    $categoryIds = Category::all()->pluck('id')->toArray();
    return [
        'category_id' => $faker->randomElement($categoryIds),
        'name' => $faker->unique()->productName,
        'price' => $faker->numberBetween(1, 100),
        'description' => $faker->realText(),
    ];
});
