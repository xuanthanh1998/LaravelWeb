@extends('admin.layout.index')
@section('content')
        <?php
         $redis = new Redis(); 
         $redis->connect('127.0.0.1', 6379); 
         echo "Connection to server sucessfully"; 
         //set the data in redis string 
         $redis->set("tutorial-name", "
         <?php
         $string =  '<div id="page-wrapper">'.
'          <div class="container-fluid">'.
'                <div class="row">'.
'                    <div class="col-lg-12">'.
'                        <h1 class="page-header">Tin Tức'.
'                            <small>Danh Sách</small>'.
'                        </h1>'.
'                    </div>'.
'                    <!-- /.col-lg-12 -->'.
'                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">'.
'                        <thead>'.
'                            <tr align="center">'.
'                                <th>ID</th>'.
'                                <th>Tiêu Đề</th>'.
'                                <th>Tóm Tắt</th>'.
'                                <th>Thể Loại</th>'.
'                                <th>Loại Tin</th>'.
'                               '.
'                               '.
'                            </tr>'.
'                        </thead>'.
'                        <tbody>'.
'                            @foreach($tintuc as $tt)'.
'                            <tr class="odd gradeX" align="center">'.
'                                <td>{{$tt->id}}</td>'.
'                                <td>{{$tt->TieuDe}}'.
'                                  '.
'                                </td>'.
'                                <td>{{$tt->TomTat}}</td>'.
'                                <td>{{$tt->LoaiTin->TheLoai->Ten}}</td>'.
'                                <td>{{$tt->LoaiTin->Ten}}</td>'.
'                                '.
'                               '.
'                            </tr>'.
'                            @endforeach'.
'                           '.
'                        </tbody>'.
'                    </table>'.
'                </div>'.
'                <!-- /.row -->'.
'            </div>'.
'            <!-- /.container-fluid -->'.
'        </div>';

 echo $string; 
         ?>
         
         "); 
         // Get the stored data and print it 
         echo "Stored string in redis:: " .$redis→get("tutorial-name"); 

?>
@endsection