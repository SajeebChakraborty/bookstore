<?php

namespace Database\Seeders;

use App\Models\Book;
use Faker\Factory as FakerFactory;
use Illuminate\Database\Seeder;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Book::truncate();

        $faker = FakerFactory::create();

        for ($i = 0; $i < 100; $i++) {
            Book::create([
                'title'  => $faker->sentence,
                'author' => $faker->name,
                'isbn'   => $faker->isbn10,
                'price'  => $faker->randomFloat(2, 10, 100),
                'stock'  => $faker->numberBetween(1, 100),
            ]);
        }
    }
}
