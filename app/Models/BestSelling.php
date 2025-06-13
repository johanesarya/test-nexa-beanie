<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BestSelling extends Model
{
    use HasFactory;

    // Tentukan nama tabel yang sesuai dengan yang ada di database
    protected $table = 'best_selling_tb';  // Sesuaikan dengan nama tabel di database

    // Tentukan kolom yang bisa diisi (fillable)
    protected $fillable = ['title', 'desc', 'image', 'price'];
}
