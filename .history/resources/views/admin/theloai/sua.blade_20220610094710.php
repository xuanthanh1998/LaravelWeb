@extends('admin.layout.index')
@section('content')
<?php
use Illuminate\Support\Facades\Redis;
$redis = new Redis(); 

echo "Connection to server sucessfully"; 
//set the data in redis string 
Redis::set("tutorial-name", "Redis tutorial"); 
// Get the stored data and print it 
echo "Stored string in redis:: " .Redis::get("tutorial-name"); 
$string =  '<div id="page-wrapper">'.
'    '.
'            <div class="container-fluid">'.
'                <div class="row">'.
'                    <div class="col-lg-12">'.
'                        <h1 class="page-header">Thể Loại'.
'                            <small>{{$theloai->Ten}}</small>'.
'                        </h1>'.
'                    </div>'.
'            <div>'.
'           '.
'                    <!-- /.col-lg-12 -->'.
'                    <div class="col-lg-7" style="padding-bottom:120px">'.
'                    @if(count($errors)> 0)'.
'                        <div class="alert alert-danger">'.
'                            @foreach($errors -> all() as $err)'.
'                                {{$err}}<br>'.
'                             @endforeach'.
'                        </div>'.
'                    @endif'.
''.
'                    @if(session(\'thongbao\'))'.
'                        <div class="alert alert-success">'.
'                            {{session(\'thongbao\')}}'.
'                        </div>'.
''.
'                    @endif'.
'                    <form action="admin/theloai/sua/{{$theloai->id}}" method="POST">'.
'                    @csrf '.
'                    <input type="hidden" name="_token" value="{{csrf_token()}}">'.
'                        '.
'                            <div class="form-group">'.
'                                <label>Tên</label>'.
'                                <input class="form-control" name="Ten" placeholder="Điển tên thể loại" value="{{($theloai->Ten)}}"/>'.
'                            </div>'.
'                            <div class="form-group">'.
'                                <label>Tên Không Dấu</label>'.
'                                <input class="form-control" name="TenKhongDau" placeholder="Please Enter Category Name" value="{{count($errors)?old(\'Ten\'):($theloai->TenKhongDau)}}"/>'.
'                            </div>'.
'                            '.
'                            <button type="submit" class="btn btn-default">Sửa</button>'.
'                            <button type="reset" class="btn btn-default">Reset</button>'.
'                        <form>'.
'                    </div>'.
'                </div>'.
'                <!-- /.row -->'.
'            </div>'.
'            <!-- /.container-fluid -->'.
'        </div>';

 echo $string; 
?>
@endsection