@extends('layout')
@section('content')
<div style="margin-top : -54px;margin-right:30%;float : right; width: 200px;height: 10px;">
    <input type="text" style="display: inline-block;border-radius: 8px 8px 8px 8px" class="form-control" placeholder="Tìm kiếm">
</div>
@if(Auth::check())
    <div style="margin-top : -48px;margin-right:100px;float : right; width: 40px;height: 20px;">
        @if(count($noti) == 0)
            <img id="show" style="float: right;display: inline-block;width: 30px;height:30px;" src="images/tb.jpg">
        @else
            <img id="show" style="float: right;display: inline-block;width: 30px;height:30px;" src="images/tb1.jpg">
        @endif
        <div id="content" style="float: right; font-size: 17px; border-radius:15px 15px 15px 15px; position: relative;display: none; width: 300px; max-height: 580px; margin-top: 20px;background: linear-gradient(to right, #e2ddf0, #a9ff9e);">
            <div style="font-size:30px;margin-top: 10px;margin-left: 20px">
                <strong >Thông báo</strong>
            </div>
            <hr style="margin : 10px">
            @if(count($noti) == 0)
                <div style="position: static; margin-bottom:10px; margin-top:10px; text-align: center"> 
                    <p>Thông báo trống</p>
                    <hr style="margin : 10px">
                </div>
                <script>
                    document.getElementById("show").onclick = function () {
                        if( document.getElementById("content").style.display == 'none')
                        {
                            document.getElementById("content").style.display = 'block';
                            document.getElementById("show").src = 'images/tb2.jpg';
                        }
                        else 
                        {
                            document.getElementById("content").style.display = 'none';
                            document.getElementById("show").src = 'images/tb.jpg';
                        }
        
                            return false;
                    };
                </script>
            @else 
                @foreach ($noti as $n)
                    <div style="position: static;margin: 20px"> 
                        <a href="{{route('changeNoti',['id'=>$n->id])}}">{{$n->content}}</a>
                        <p style="float: right;font-size: 10px;margin-top: 5px">{{$n->date}}</p>
                        <hr style="margin-top:20px">
                    </div>
                @endforeach
                <script>
                    document.getElementById("show").onclick = function () {
                        if( document.getElementById("content").style.display == 'none')
                        {
                            document.getElementById("content").style.display = 'block';
                            document.getElementById("show").src = 'images/tb2.jpg';
                        }
                        else 
                        {
                            document.getElementById("content").style.display = 'none';
                            document.getElementById("show").src = 'images/tb1.jpg';
                        }
        
                            return false;
                    };
                </script>
            @endif
            <div style="position: static ;bottom: 0px; margin-bottom:10px; text-align: center">
                <a style="opacity: 1.0" href="#">View All</a>
            </div>
        </div>
    </div>
@endif
<div class = "container-fluid">
    @if($errors->any())
    <div class ="alert alert-danger">
        <ul>
            @foreach($errors-> all() as $error)
            <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <div class="addnew">
    <form method = "POST" action = "{{route('insertnew')}}" enctype="multipart/form-data">
        {{csrf_field()}}
        <div class = "form-group">
            <label for = "title">Tiêu đề:</label>
            <input type = "text" name="tieude" id = "tieude" class="form-control">
            <br>
        </div>
        <div class = "form-group">
            <label for = "img">Hình tin tức:</label>
            <input type = "file" name="fileUpLoad" id = "fileUpLoad" class="form-control">
            <br>
        </div>
        <div class = "form-group">
            <label for = "content">Tóm tắt:</label>
                <textarea name="tomtat" id = "tomtat" class="form-control" placeholder ="Phần tóm tắt nội dung tin tức"></textarea>
            <br>
        </div>
        <div class = "form-group">
            <label for = "para">Nội dung:</label>
            <textarea name="noidung" id = "noidung" class="form-control" placeholder ="Phần tóm tắt nội dung tin tức"></textarea>
            <br>
        </div>
        <div class = "form-group">
           <button style ="cursor:pointer" type="submit" class="btn btn-primary">Thêm</button>
        </div>
    </form>
    </div>
</div>
@stop