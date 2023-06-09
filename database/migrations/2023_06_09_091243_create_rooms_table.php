<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('rooms', function (Blueprint $table) {
            $table->id();
            $table->string('name', 100)->nullable(false);
            $table->text('description')->nullable(true);
            $table->string(' poster_url', 100)->nullable(true);
            $table->decimal('floor_area', 8, 2)->nullable(false);
            $table->string('type', 100)->nullable(false);
            $table->integer('price')->nullable(false);
            $table->foreignId('hotel_id')->nullable(false)->constrained()->onDelete('cascade');;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rooms');
    }
};
