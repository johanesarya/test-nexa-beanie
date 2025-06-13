<?php

namespace App\Http\Controllers;

use App\Models\Shop;

class ShopController extends Controller
{
    public function index()
    {
        // Ambil semua produk dari tabel shop_tb
        $products = Shop::all(); // Pastikan mengambil data produk dari database

        // Kirim data produk ke tampilan
        return view('shop', compact('products')); // Mengirim variabel $products ke view 'shop'
    }
}
