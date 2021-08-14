<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExecutiveMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('executive__members', function (Blueprint $table) {
            $table->unsignedInteger('m_id');
            $table->foreign('m_id')->references('m_id')->on('members')->onDelete('cascade');
            $table->string('photo'); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('executive__members');
    }
}
