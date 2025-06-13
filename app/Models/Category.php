<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'table_categories';

    protected $fillable = ['title', 'image', 'description'];
}
