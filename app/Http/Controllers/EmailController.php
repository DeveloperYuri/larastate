<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class EmailController extends Controller
{
    public function email_compose()
    {
        $data['getEmail'] = User::whereIn('role', ['agent', 'user'])->get();
        return view('admin.email.compose', $data);
    }

    public function email_compose_post(Request $request){
        dd($request->all());
    }
}
