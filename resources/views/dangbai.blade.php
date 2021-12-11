@extends('layout')
@section('content')
    <div class="dangbai0 container-fluid">
        <div >
            <div style="padding-bottom:5px"   class="dangbai1 col-2">
                <select class="form-control" name="category" id="category">
                    <option value ="Thảo luận">Thảo luận</option>
                    <option value ="Hỏi thắc mắc">Hỏi thắc mắc</option>
                    <option value ="Chia sẻ">Chia sẻ</option>
                </select>
            </div>
            <div class="dangbai1 col-7">
                <input type = "text" name="productname" id = "productname" class="form-control" placeholder ="Tiêu đề">   
            </div>
        </div>
        <div class="dangbai2">
            <div style="padding-bottom:5px"  style="padding-top:5px">
                <button type="button" class="btn btn-info">B</button>
                <button type="button" class="btn btn-info">I</button>
            </div>
            <div>
            </div>
            <div>
            </div>
        </div>
        <div class="dangbai3" style="margin-right: 24.5% ">
            <textarea class="form-control" style="height: 600px " ></textarea>
        </div>
        <div class="dangbai4"> 
            <input type="submit" class="btn btn-info" value="Đăng bài">
        </div>
    </div>
@stop
