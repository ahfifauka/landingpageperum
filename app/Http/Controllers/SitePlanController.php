<?php

namespace App\Http\Controllers;

use App\Models\SitePlan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SitePlanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sitePlan = SitePlan::first();
        $data = [
            "sitePlan"  => $sitePlan
        ];
        return view('siteplan.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('siteplan.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            "siteplan"  => ['required', 'mimes:jpg,png']
        ]);

        $filename = microtime() . '.' . $request->siteplan->extension();
        Storage::putFileAs('public/siteplan', $request->siteplan, $filename);

        $request['gambar'] = $filename;

        SitePlan::truncate();
        SitePlan::create([
            'siteplan'  => $request->gambar
        ]);
        return redirect()->route('siteplan.index')->with('success', 'siteplan diperbaharui');
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
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
