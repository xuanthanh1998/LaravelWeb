@extends('admin.layout.index')
@section('content')

<?php
use Illuminate\Support\Facades\Redis;
   $redis = new Redis(); 
   $redis->connect('127.0.0.1', 6379); 
   echo "Connection to server sucessfully"; 
   //set the data in redis string 
   $redis->set("tutorial-name", "Redis tutorial"); 
   // Get the stored data and print it 
   echo "Stored string in redis:: " .$redis→get("tutorial-name"); 
$string =  '<div id="page-wrapper">'.
'            <div class="container-fluid">'.
'                <div class="row">'.
'                    <div class="col-lg-12">'.
'                        <h1 class="page-header">Thể Loại'.
'                            <small>Danh Sách</small>'.
'                        </h1>'.
'                    </div>'.
'                    <!-- /.col-lg-12 -->'.
'                    @if(session(\'thongbao\'))'.
'                        <div class="alert alert-success">'.
'                            {{session(\'thongbao\')}}'.
'                        </div>'.
''.
'                    @endif'.
'                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">'.
'                        <thead>'.
'                            <tr align="center">'.
'                                <th>ID</th>'.
'                                <th>Tên Thể Loại</th>'.
'                                <th>Tên KHông dấu</th>'.
'                                '.
'                                <th>Edit</th>'.
'                                <th>Delete</th>'.
'                            </tr>'.
'                        </thead>'.
'                        <tbody>'.
'                            @foreach($theloai as $tl)'.
'                            <tr class="odd gradeX" align="center">'.
'                                <td>{{$tl->id}}</td>'.
''.
'                                <td>{{$tl->Ten}}</td>'.
'                                <td>{{$tl->TenKhongDau}}</td>'.
'                               '.
'                                '.
'                                <td class="center"><i class="  fa fa-pencil fa-fw" ></i><a href="admin/theloai/sua/{{$tl->TenKhongDau}}"> Sửa</a></td>'.
'                                <td class="center"><i class="fa fa-trash-o fa-fw"></i><a href="admin/theloai/xoa/{{$tl->id}}"> Xóa</a></td>'.
'                            </tr>'.
'                           @endforeach'.
'                        </tbody>'.
'                    </table>'.
'                </div>'.
'                <!-- /.row -->'.
'            </div>'.
'            <!-- /.container-fluid -->'.
'        </div>';

 echo $string; 
?>
@endsection