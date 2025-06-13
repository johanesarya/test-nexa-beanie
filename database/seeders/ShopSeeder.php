<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Shop;

class ShopSeeder extends Seeder
{
    public function run()
    {
        Shop::create([
            'name' => 'Caramelicious',
            'image' => 'images/products/caramelicious.png',
            'price' => 29.00,
        ]);

        // Tambahkan lebih banyak data sesuai kebutuhan
        Shop::create([
            'name' => 'Hazelnut Heaven',
            'image' => 'images/products/hazelnut.png',
            'price' => 29.00,
        ]);

        Shop::create([
            'name' => 'Mapel Magic',
            'image' => 'images/products/maple.png',
            'price' => 29.00,
        ]);

        Shop::create([
            'name' => 'Coffee Bean',
            'image' => 'images/products/bean.png',
            'price' => 29.00,
        ]);

        Shop::create([
            'name' => 'Coffee Maker Heaven',
            'image' => 'images/products/maker.png',
            'price' => 29.00,
        ]);
    }
}
