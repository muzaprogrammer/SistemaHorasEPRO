@extends('layouts.app', ['activePage' => 'Presupuesto', 'titlePage' => __('Presupuesto')])

@section('content')
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
      <div class="col-md-12">
      <form class="md-form" action="{{ route('budget.import.excel')}}" method="post" enctype="multipart/form-data">
      @csrf 
      @if(Session::has('message'))
      <p>{{Session::get('message')}}</p>
      @endif
  <div class="file-field">
    <div class="btn btn-outline-dark btn-sm float-left">
      <span>Cargar archivo</span>
      <input type="file" name='file'>      
    </div>
    <button class="btn btn-success btn-sm float-left">Importar</button>
  </div>
</form>
      <br>
      </br>
      </div>
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title ">Presupuesto</h4>
            <p class="card-category"> Detalle de presupuesto ciclo</p>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table">
                <thead class="thead-light">
                  <th>
                    Codigo
                  </th>
                  <th>
                    Materia
                  </th>
                  <th>
                    Docente
                  </th>
                  <th>
                    IdEmp
                  </th>
                  <th>
                    Seccion
                  </th>
                  <th>
                    Hora
                  </th>
                  <th>
                    Dias
                  </th>
                  <th>
                    Cupo
                  </th>
                  <th>
                    Inscritos
                  </th>
                  <th>
                    Disponibles
                  </th>
                  <th>
                    Aula
                  </th>
                  <th>
                    Estado
                  </th>
                </thead>
                <tbody>
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection