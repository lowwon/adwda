@extends('layout')
@section('content')
    <div class="container">
        <form method = "POST" action = "" enctype="multipart/form-data">
        <div class="ss">
            <div style="padding-bottom:5px" class="dangbai1 col-3">
                <select class="form-control" name="category" id="category">
                    <option value ="Thảo luận">Thảo luận</option>
                    <option value ="Hỏi thắc mắc">Hỏi thắc mắc</option>
                    <option value ="Chia sẻ">Chia sẻ</option>
                </select>
            </div>
            <div class="dangbai1 col-8">
                <input type = "text" name="titlepost" id = "titlepost" class="form-control" placeholder ="Tiêu đề">   
            </div> 
        </div>
        <div class="dangbai2">
            <textarea name="areapost" id="areapost" rows="30" placeholder ="Tiêu đề" ></textarea>
        </div>
        <div class="dangbai2"> 
            <input type="submit" class="btn btn-info" value="Đăng bài">
        </div>
        </form>
    </div>
@stop
