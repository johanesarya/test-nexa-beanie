<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('shop_tb', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Nama produk
            $table->string('image'); // Nama gambar produk
            $table->decimal('price', 10, 2); // Harga produk
            $table->timestamps(); // Tanggal dibuat dan diupdate
        });
    }

    public function down()
    {
        Schema::dropIfExists('shop_tb');
    }
};
