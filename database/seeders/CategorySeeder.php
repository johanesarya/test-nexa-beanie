<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    public function run()
    {
        DB::table('table_categories')->insert([
            [
                'title' => 'Instant Coffees',
                'image' => 'images/category/instant-coffee.png',
                'description' => 'Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.',
            ],
            [
                'title' => 'Coffee Maker',
                'image' => 'images/category/coffee-maker.png',
                'description' => 'Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.',
            ],
            [
                'title' => 'Coffee Accessories',
                'image' => 'images/category/coffee-accessories.png',
                'description' => 'Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.',
            ],
            [
                'title' => 'Coffee Gift Sets',
                'image' => 'images/category/coffee-gift.png',
                'description' => 'Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.',
            ],
        ]);
    }
}
