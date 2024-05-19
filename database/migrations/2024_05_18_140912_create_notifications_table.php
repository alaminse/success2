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
        Schema::create('notifications', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('notifiable_id')->nullable();
            $table->unsignedBigInteger('candidate_id')->nullable();
            $table->string('type')->nullable();
            $table->string('notifiable_type')->nullable();
            $table->string('title');
            $table->integer('day')->default(1);
            $table->text('data');
            $table->time('time');
            $table->date('date');
            $table->date('new_date');
            $table->tinyInteger('read_at')->nullable();
            $table->tinyInteger('status')->default(5);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('notifications');
    }
};
