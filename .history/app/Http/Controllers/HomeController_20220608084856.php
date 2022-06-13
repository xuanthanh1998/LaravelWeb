<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Event;
use App\Events\NewTitle;
use Illuminate\Support\Facades\Log;
use App\Models\TinTucModel;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
   

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
//         Log::info("hello");
// //         Log::emergency($message);
// // Log::alert($message);
// // Log::critical($message);
// // Log::error($message);
// // Log::warning($message);
// // Log::notice($message);
// // Log::info($message);
// // Log::debug($message);


// $tintuc = TinTucModel::with('idLoaiTin')->orderBy('created_at', 'desc')->paginate();
return view('home');
    }
    public function adminHome()
    {
        return view('adminHome');
    }
}
