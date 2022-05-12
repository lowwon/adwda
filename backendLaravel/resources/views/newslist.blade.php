@extends('layout')
@section('content')
<div class = "container">
<b style="font-size: 55px">Danh sách tin tức</b>
    <table class="table table-hover" style = "padding:50px">
        <tr>
            <th>Mã tin</th>
            <th>Hình tin tức</th>
            <th>Tiêu đề</th>
            <th>Tóm tắt</th>
            <th style="width:200px">Người đăng</th>
            <th style = "width: 100px"></th>
        </tr>
        @foreach($news as $n)
        <tr>
            <td>{{$n->id}}</td>
            <td><img src="images/{{$n->img}}" width="200" height="80"></td>
            <td>{{$n->title}}</td>
            <td style= "text-align: justify;">{!!$n->content!!}</td>
            <td >{{$n->User->name}}</td>
            <td><a href = "{{route('xoatin',['id'=>$n->id])}}">Delete</a></td>
        </tr>
        @endforeach
    </table>
    {{$news->links()}}
</div>
@stop