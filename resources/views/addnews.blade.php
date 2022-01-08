@extends('layout')
@section('content')
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