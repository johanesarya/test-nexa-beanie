<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Arrival; // Pastikan Anda mengimpor model Arrival

class ArrivalSeeder extends Seeder
{
    public function run()
    {
        Arrival::create([
            'title' => 'Coconut Kiss',
            'desc' => 'A strong and concentrated shot of coffee.',
            'image' => 'images/arrival/coconut-kiss.png',
            'price' => 2.99,
        ]);

        Arrival::create([
            'title' => 'Pumpkin Spice Surpirse',
            'desc' => 'A shot of espresso diluted with hot water.',
            'image' => 'images/arrival/pumpkin-spice.png',
            'price' => 3.49,
        ]);

        Arrival::create([
            'title' => 'Toffee Temptation',
            'desc' => 'Equal parts of espresso, steamed milk, and foam, topped with cocoa.',
            'image' => 'images/arrival/toffe-temptation.png',
            'price' => 3.99,
        ]);

        Arrival::create([
            'title' => 'Gingerbread Galore',
            'desc' => 'Creamy espresso with steamed milk and a thin layer of foam.',
            'image' => 'images/arrival/gingerbread-galore.png',
            'price' => 4.49,
        ]);

        Arrival::create([
            'title' => 'Salted Caramel Sip',
            'desc' => 'A nutty and indulgent latte with a hint of macadamia flavor.',
            'image' => 'images/arrival/salted-caramel.png',
            'price' => 3.99,
        ]);
    }
}
