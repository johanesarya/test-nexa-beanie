<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Shop;
use App\Models\Category;
use App\Models\Arrival;
use App\Models\BestSelling;
use App\Models\Blog;
use App\Models\Product;
use App\Models\Post;


class HomeController extends Controller
{
    /**
     * Menampilkan halaman utama.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $products = Shop::all();
        $categories = Category::all();
        $newArrivals = Arrival::all();
        $bestSelling = BestSelling::all();
        $blogs = Blog::all();
        $posts = Post::all();
        return view('home', compact(
            'products',
            'categories',
            'newArrivals',
            'bestSelling',
            'blogs',
            'posts'
        ));
    }
}
