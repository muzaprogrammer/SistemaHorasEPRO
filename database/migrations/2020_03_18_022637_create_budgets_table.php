<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBudgetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('budgets', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('codmateria');
            $table->string('nombremateria');
            $table->string('docente');
            $table->integer('codeempleado');
            $table->integer('seccion');
            $table->time('horainicio');
            $table->time('horafin');
            $table->string('dias');
            $table->string('cupo');
            $table->string('inscritos');
            $table->string('disponible');
            $table->string('aula');
            $table->string('estado');
            $table->droptimestamps();
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
        Schema::dropIfExists('budgets');
    }
}
