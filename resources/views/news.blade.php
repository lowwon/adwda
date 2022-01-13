@extends('layout')
@section('content')
<style>
    .card {
        width: 500px;
        height: 600px;
    }
</style>
<div class="container" style="margin-top:30px">
    <div class="row">
        <div>
            <b style="font-size: 55px">TIN TỨC</b>
            <p>@php
                date_default_timezone_set('Asia/Ho_Chi_Minh');
                echo date("d/m/Y h:i:s");
                @endphp
            </p>
            @if(Auth::check())
                @if (Auth::user()->role_id > 2)
                <a href="{{route('dangtin')}}" ><input type="button" class="btn btn-dark" name="dt" id="dt" value="Đăng tin" style="float: right; margin-right: 50px; margin-top: -50px"></a>
                @endif         
            @endif
            <hr style="margin-top: 30px; margin-bottom: 30px">
        </div>
        @foreach($news as $n)
        <div class="col-sm-4" style="height:300px">
            <a href="{{route('ndtintuc',['id' => $n->id])}}">
                <img src="images/{{$n->img}}" class="img-fluid">
            </a>
        </div>
        <div class="col-sm-8">
            <div class="title">
                <a href="{{route('ndtintuc',['id' => $n->id])}}"><b>{!!$n->title!!}</b></a>
            </div>
            <div class="content">
                <p>{!!$n->content!!}</p>
            </div>
        </div> 
        @endforeach
    </div>
{{ $news->links(); }}
</div>
@stop