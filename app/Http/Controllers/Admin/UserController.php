<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::with('roles')->paginate(10);

        $roles = Role::get();

        return view('admin.user.index', compact('users', 'roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $user->syncRoles($request->role);

        return back()->with('toast_success', 'Role User Berhasil Diubah');
    }

    public function create()
    {
        $role = Role::get();

        return view('admin.user.create', compact('role'));
    }

    public function store(Request $request)
    {

        User::create([
            'email' => $request->email,
            'password' => $request->password,
            'name' => $request->name,
            'department' => $request->department,
        ]);

        return redirect((route('admin.user.index')))->with('toast_success', 'User Berhasil Ditambahkan');
    }
    
}
