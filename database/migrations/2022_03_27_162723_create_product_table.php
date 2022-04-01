<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('slug');
            $table->string('image');
            $table->string('description');
            $table->integer('price')->default(0);
            $table->integer('inventory')->default(0);
            $table->integer('status')->default(1);;
            $table->integer('product_category_id');
            $table->integer('check_home_page')->default(0);
            $table->integer('check_trending')->default(0);
            $table->integer('best_seller')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product');
    }
}
