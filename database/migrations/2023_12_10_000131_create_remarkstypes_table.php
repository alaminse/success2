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
        Schema::create('remarkstypes', function (Blueprint $table) {
            $table->id();
            $table->string('remarkstype_code')->unique();
            $table->string('remarkstype_desc');
            $table->integer('remarkstype_seqno')->nullable();
            $table->integer('remarkstype_status')->default(1);
            $table->integer('created_by')->nullable();
            $table->integer('modify_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('remarkstypes');
    }
};
