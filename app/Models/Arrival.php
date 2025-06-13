<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Arrival extends Model
{
    use HasFactory;

    // Tentukan nama tabel yang sesuai dengan yang ada di database
    protected $table = 'arrival_tb';  // Sesuaikan dengan nama tabel di database

    // Tentukan kolom yang bisa diisi (fillable)
    protected $fillable = ['title', 'desc', 'image', 'price'];
}
