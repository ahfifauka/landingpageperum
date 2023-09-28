<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public $roles;

    public function __construct()
    {
        $this->roles = Role::all();
    }

    public function index()
    {
        $users = User::all();
        $data = [
            "users" => $users
        ];
        return view('user.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data = [
            "roles" => $this->roles
        ];
        return view('user.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            "name"  => ['required'],
            "email" => ['required', 'unique:users,email'],
            "password" => ['required', 'min:8', 'confirmed'],
            "role_id"   => ['required']
        ]);

        User::create($request->all());
        return redirect()->route('user.index')->with('success', 'Data baru berhasil disimpan');
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
        $user = User::find($id);
        $data = [
            "user"  => $user,
            "roles" => $this->roles
        ];
        return view('user.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            "name"  => ['required'],
            "email" => ['required', 'unique:users,email,' . $id],
            "role_id"   => ['required']
        ]);

        User::where('id', $id)->update($request->only('name', 'email', 'role_id'));
        return redirect()->route('user.index')->with('success', 'Data baru berhasil dirubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect()->route('user.index')->with('success', 'User berhasil dihapus');
    }
}
