<?php

namespace Database\Seeders;

use App\Models\Channel;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ChannelsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 30; $i++) { // Tạo 30 bản ghi mẫu
            Channel::create([
                'name' => $faker->word,
                'description' => $faker->sentence,
                'subscribersCount' => $faker->numberBetween(100, 10000),
                'URL' => $faker->url,
            ]);
        }
    }
}
