<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Blog;

class BlogSeeder extends Seeder
{
    public function run(): void
    {
        Blog::insert([
            [
                'title' => 'WHAT IS THE BEST COFFEE?',
                'image' => 'best-coffee.png',
                'description' => 'Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam metus sagittis non eu pellentesque facilisis.',
            ],
            [
                'title' => 'HOW COFFEE WORKS FOR YOUR BODY',
                'image' => 'how-coffee.png',
                'description' => 'Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam metus sagittis non eu pellentesque facilisis.',
            ],
            [
                'title' => 'CUP OF COFFEE FOR YOUR HAPPINESS',
                'image' => 'cup-of-coffee.png',
                'description' => 'Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam metus sagittis non eu pellentesque facilisis.',
            ],
        ]);
    }
}
