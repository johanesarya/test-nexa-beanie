<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'blog_tb';

    protected $fillable = ['title', 'image', 'description'];
}
