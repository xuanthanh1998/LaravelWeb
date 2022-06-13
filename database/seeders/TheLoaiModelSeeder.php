<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TheLoaiModelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	DB::table('the_loai_models')->insert([
        	['Ten' => 'Xã Hội','TenKhongDau' => 'Xa-Hoi'],
        	['Ten' => 'Thế Giới','TenKhongDau' => 'The-Gioi'],
        	['Ten' => 'Kinh Doanh','TenKhongDau' => 'Kinh-Doanh'],
        	['Ten' => 'Văn Hoá','TenKhongDau' => 'Van-Hoa'],
        	['Ten' => 'Thể Thao','TenKhongDau' => 'The-Thao'],
        	['Ten' => 'Pháp Luật','TenKhongDau' => 'Phap-Luat'],
        	['Ten' => 'Đời Sống','TenKhongDau' => 'Doi-Song'],
        	['Ten' => 'Khoa Học','TenKhongDau' => 'Khoa-Hoc'],
        	['Ten' => 'Vi Tính','TenKhongDau' => 'Vi-Tinh']
    	]);

    }
}
