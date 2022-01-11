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
            <b>TIN TỨC</b>
            <p>@php
                date_default_timezone_set('Asia/Ho_Chi_Minh');
                echo date("d/m/Y h:i:s");
                @endphp
            </p>
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