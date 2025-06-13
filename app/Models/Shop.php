<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    use HasFactory;

    // Tentukan nama tabel yang sesuai dengan yang ada di database
    protected $table = 'shop_tb'; // Sesuaikan dengan nama tabel yang ada di database

    protected $fillable = ['name', 'image', 'price'];
}
