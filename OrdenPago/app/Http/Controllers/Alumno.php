<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Alumno extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id="")
    {
        $tabla = \DB::select("select * from listar_clientes_OUT('$id')");
        // $tabla = \DB::table('vw_datosxalumnos')->get();
        $tabla = collect($tabla)->map(function($x){return (array)$x;})->toArray();
        if(count($tabla)>0){
            return view('alumnoVista',array('alumnos'=>$tabla, 'idLegajo'=>$id));
        }
        else{
            echo '<h2>No hay datos, por favor ingrese el legajo en la URL</h2>';
        }
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
 
    public function show($id, $fecha)
    {
        $tabla = \DB::select("select * from listar_xfecha_OUT('$id', '$fecha')");
        $tabla = collect($tabla)->map(function($x){return (array)$x;})->toArray();
        if(count($tabla)>0){
            return view('alumnoDetalle',array('alumnos'=>$tabla));
        }
        else{
            echo '<h2>No hay datos</h2>';
        }
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
