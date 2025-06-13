<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;

class PostSeeder extends Seeder
{
    public function run(): void
    {
        Post::insert([
            ['image' => 'ig-1.png'],
            ['image' => 'ig-2.png'],
            ['image' => 'ig-3.png'],
            ['image' => 'ig-4.png'],
            ['image' => 'ig-5.png'],
            ['image' => 'ig-6.png'],
        ]);
    }
}
