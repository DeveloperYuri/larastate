<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class AdminController extends Controller
{
    public function AdminDashboard(Request $request)
    {
        $user = User::selectRaw('count(id) as count, DATE_FORMAT(created_at, "%Y-%m") as month')
            ->groupBy('month')
            ->orderBy('month', 'asc')
            ->get();

        $data['months'] = $user->pluck('month');
        $data['counts'] = $user->pluck('count');

        return view('admin.index', $data);
    }

    public function AdminLogout(Request $request)
    {
        Auth::guard('web')->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/admin/login');
    }

    public function AdminLogin(Request $request)
    {
        return view('admin.admin_login');
    }

    public function admin_profile(Request $request)
    {

        $data['getRecord'] = User::find(Auth::user()->id);
        return view('admin.admin_profile', $data);
    }

    public function admin_profile_update(Request $request)
    {
        //dd($request->all());


        $user = request()->validate([
            'email' => 'required|unique:users,email,' . Auth::user()->id
            //'email' => 'required|unique:email'.Auth::user()->id
        ]);


        $user = User::find(Auth::user()->id);
        $user->name = trim($request->name);
        $user->username = trim($request->username);
        $user->email = trim($request->email);
        $user->phone = trim($request->phone);

        if (!empty($request->password)) {
            $user->password = Hash::make($request->password);
        }

        if (!empty($request->file('photo'))) {

            $file = $request->file('photo');
            $randomStr = Str::random(30);
            $filename = $randomStr . '.' . $file->getClientOriginalExtension();
            $file->move('upload/', $filename);
            $user->photo = $filename;
        }

        $user->address = trim($request->address);
        $user->about = trim($request->about);
        $user->website = trim($request->website);

        $user->save();

        return redirect('admin/profile')->with('success', 'Profile Update Sucessfully ..');
    }

    public function admin_users(Request $request)
    {
        $data['getRecord'] = User::getRecord($request);
        return view('admin.users.list', $data);
    }

    public function admin_users_view($id)
    {
        $data['getRecord'] = User::find($id);
        return view('admin.users.view', $data);
    }
}
