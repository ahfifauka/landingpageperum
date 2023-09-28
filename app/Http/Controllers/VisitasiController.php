<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Visitasi;
use Carbon\Carbon;
use Illuminate\Http\Request;

class VisitasiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = [
            "visitasi" => Visitasi::orderBy('id', 'DESC')->get()
        ];
        return view('visitasi.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
    }

    public function createVisitasi()
    {
        $data = [
            "agents"    => User::where('role_id', 2)->orderBy('name', 'ASC')->get()
        ];
        return view('visitasi.createvisitasi', $data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            "nama"      => ['required'],
            "email"     => ['required', 'email:rfc,dns'],
            "telepon"   => ['required', 'numeric'],
            "tgl_visitasi"  => ['required', 'after_or_equal:' . Carbon::now()],
            "jam_visitasi"  => ['required'],
            "agent_id"      => ['required']
        ]);

        Visitasi::create($request->all());
        return redirect()->to('/')->with('success', 'Terimakasih telah menghubungi kami, agent kami akan segera menghubungi anda');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $visitasi = Visitasi::find($id);
        $visitasi->status = "selesai";
        $visitasi->save();
        return redirect()->route('visitasi.index')->with('success', 'data visitasi berhasil dirubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
