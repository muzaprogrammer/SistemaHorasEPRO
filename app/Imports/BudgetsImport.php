<?php

namespace App\Imports;

use App\budget;
use Maatwebsite\Excel\Concerns\ToModel;

class BudgetsImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new budget([
            //
            'codmateria'=> $row[0],
            'nombremateria'=> $row[1],
            'docente'=> $row[2],
            'codeempleado'=> $row[3],
            'seccion'=> $row[4],
            'horainicio'=> $row[5],
            'horafin'=> $row[6],
            'dias'=> $row[7],
            'cupo'=> $row[8],
            'inscritos'=> $row[9],
            'disponible'=> $row[10],
            'aula'=> $row[11],
            'estado'=> $row[12]
        ]);
    }
}
