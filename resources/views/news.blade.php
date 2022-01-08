@extends('layout')
@section('content')
<div class="container" style="margin-top:30px">
    <div class="row">
        @foreach($news as $n)
        <div class="col-sm-4" style="height:300px">
        <a href="#">
                <img src="images/{{$n->img}}" style="width:500px;height:300px; padding-bottom:10px">
            </a>
        </div>
        <div class="col-sm-8">
            <div class="title">
                <a href="#">{{$n->title}}</a>
            </div>
            <div class="content">
                <a href="#">{!!$n->content!!}<a>
            </div>
        </div>
        @endforeach
    </div>
        {{ $news->links(); }}
</div>
@stop