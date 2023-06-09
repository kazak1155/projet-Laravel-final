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
        Schema::create('bookings', function (Blueprint $table) {
            $table->id();
            $table->foreignId('room_id')->nullable(false)->constrained();
            $table->foreignId('user_id')->nullable(false)->constrained();
            $table->timestamp('started_at')->useCurrent();
            $table->timestamp('finished_at')->useCurrent();
            $table->integer('days')->nullable(false);
            $table->integer('price')->nullable(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bookings');
    }
};
