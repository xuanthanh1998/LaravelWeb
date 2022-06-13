<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TheLoaiModel;
use Illuminate\Support\Facades\Validator;
use App\Events\TheLoaiCreate;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Redis;


use Illuminate\Support\Facades\Log;


class TheLoaiController extends Controller
{
    

    public function getDanhSach($id){
      
        $theloai = Redis::get('category-' . $id);


        if(isset($theloai )) {
            $theloai = json_decode($theloai, FALSE);
      
            
        }else {
            $theloai = TheLoaiModel::find($id);
            Redis::set('category-' . $id, $theloai);
      
           
        }
       
       
        
        
         $theloai = TheLoaiModel::get();
        return view('admin.theloai.danhsach', ['theloai'=>$theloai]);
    }


    //Thêm
    public function getThem(){
        return view('admin.theloai.them');  
    }

    public function postThem(Request $request,){
        
       

        $this->validate($request,
        ['Ten' => 'required',
        'TenKhongDau' =>'required'
        ]);
         $theloai = new TheLoaiModel;
         $theloai ->Ten = $request->Ten;
         $theloai ->TenKhongDau = $request->TenKhongDau;
         $theloai->save();
      
         return redirect('admin/theloai/them')->with('thongbao','Them thanh cong');
    }



    //sửa
    public function getSua(){        
        $theloai = TheLoaiModel::all();
        return view('admin.theloai.them', ['theloai'=>$theloai]);
    }


    public function postSua(Request $request,$id){
        $theloai = TheLoaiModel::findOrFail($id)->update($request->all());

        if($theloai) {
      
            // Delete blog_$id from Redis
            Redis::del('category-' . $id);
      
            $theloai = TheLoaiModel::find($id);
            // Set a new key with the blog id
            Redis::set('category-' . $id, $theloai);
      
            return response()->json([
             'status_code' => 200,
                'message' => 'the loai updated',
                'data' => $theloai,
            ]);
        }
        
        // $theloai = TheLoaiModel::find($id);
        // $this->validate($request,
        // ['Ten' => 'required|min:3|max:100',
        // 'TenKhongDau' =>'required'
        // ],
        // [
        //     'Ten.required'=>'Bạn chưa nhập tên thể loại',
           
        //     'TenKhongDau.required'=>'Bạn chưa nhập tên thể loại không dấu',
        //     'Ten.min'=>'Tên thể loại phải có độ dài từ 3 cho đến 100 ký tự',
        //     'Ten.max'=>'Tên thể loại phải có độ dài từ 3 cho đến 100 ký tự',

        // ]);

        // $theloai ->Ten = $request->Ten;
        // $theloai ->TenKhongDau = $request->TenKhongDau;
        // $theloai->save();
        return redirect('admin/theloai/sua/'.$id)->with('thongbao','sua thanh cong');
    }



    //xóa
    public function getXoa($id){
        TheLoaiModel::findOrFail($id)->delete();
        Redis::del('category-' . $id);
      
        return response()->json([
            'status_code' => 200,
            'message' => 'Ten deleted'
        ]);
        $theloai = TheLoaiModel::find($id);
        $theloai-> delete();
        return redirect('admin/theloai/danhsach')->with('thongbao','Xóa Thành công');
    }

   
}
