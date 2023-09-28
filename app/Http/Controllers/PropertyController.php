<?php

namespace App\Http\Controllers;

use App\Models\Property;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PropertyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = [
            "properties"    => Property::all()
        ];
        return view('property.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('property.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            "tipe"  => ['required'],
            "lt"    => ['required', 'integer', 'min:1'],
            "lb"    => ['required', 'integer', 'min:1'],
            "km"    => ['required', 'integer', 'min:1'],
            "kt"    => ['required', 'integer', 'min:1'],
            'harga' => ['required', 'integer'],
            "lantai"    => ['required', 'integer', 'min:1'],
            "gambar"    => ['required', 'mimes:jpg,png'],
        ]);

        $filename = microtime() . '.' . $request->gambar->extension();
        Storage::putFileAs('public/property', $request->gambar, $filename);
        $newRequest = $request->except('gambar');
        $newRequest['gambar'] = $filename;
        Property::create($newRequest);
        return redirect()->route('property.index')->with('success', 'Data property berhasil disimpan');
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
        $data = [
            "property"  => Property::find($id)
        ];
        return view('property.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            "tipe"  => ['required'],
            "lt"    => ['required', 'integer', 'min:1'],
            "lb"    => ['required', 'integer', 'min:1'],
            "km"    => ['required', 'integer', 'min:1'],
            "kt"    => ['required', 'integer', 'min:1'],
            'harga' => ['required', 'integer'],
            "lantai"    => ['required', 'integer', 'min:1'],
            "gambar"    => ['nullable', 'mimes:jpg,png'],
        ]);

        $newRequest = $request->only('tipe', 'lt', 'lb', 'km', 'kt', 'harga');
        if ($request->gambar <> "") {
            $filename = microtime() . '.' . $request->gambar->extension();
            Storage::putFileAs('public/property', $request->gambar, $filename);
            $newRequest['gambar'] = $filename;
        }
        Property::where('id', $id)->update($newRequest);
        return redirect()->route('property.index')->with('success', 'Data property berhasil dirubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $property = Property::find($id);
        $property->delete();
        return redirect()->route('property.index')->with('success', 'Data property dihapus');
    }

    public function propertyAll(Request $request)
    {
        $properti = Property::orderBy('tipe', 'ASC')->get();
        $data = [
            "properties"    => $properti
        ];
        return view('property.showall', $data);
    }
}
