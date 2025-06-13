<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\BestSelling;

class BestSellingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        BestSelling::create([
            'title' => 'Cinnamon Swirl',
            'desc' => 'A strong and concentrated shot of coffee.',
            'image' => 'images/arrival/cinnamon-swirl.png',
            'price' => 2.99,
        ]);

        BestSelling::create([
            'title' => 'Hazelnut Heaven',
            'desc' => 'A shot of espresso diluted with hot water.',
            'image' => 'images/arrival/hazelnut-heaven.png',
            'price' => 3.49,
        ]);

        BestSelling::create([
            'title' => 'Peppermint Perk',
            'desc' => 'Equal parts of espresso, steamed milk, and foam, topped with cocoa.',
            'image' => 'images/arrival/peppermint-perk.png',
            'price' => 3.99,
        ]);

        BestSelling::create([
            'title' => 'Berry Blast',
            'desc' => 'Creamy espresso with steamed milk and a thin layer of foam.',
            'image' => 'images/arrival/berry-blast.png',
            'price' => 4.49,
        ]);

        BestSelling::create([
            'title' => 'Macadamia Nut Latte',
            'desc' => 'A nutty and indulgent latte with a hint of macadamia flavor.',
            'image' => 'images/arrival/macademia-nut.png',
            'price' => 3.99,
        ]);
    }
}
