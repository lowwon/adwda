@extends('layout')
@section('content')
<style>
    .n_detail{
        padding-left: 50px;
        padding-top: 20px;
    }
    .img-news{
        width: 700px;
        height: 500;
    }
    .title{
        font-size: 35px;
    }
    .content{
        
    }
    .ordernews{
        font-size: 25px;
        margin-top: 30px;
    }
</style>
<div class="container" style="margin-top:30px">
<div class="row">
    <div class="n_detail col-7">        
        <b class="title">{!!$news->title!!}</b> <br>
        <b class="content">{!!$news->content!!}</b> <br>
        <img class="img-news" src="images/{{$news->img}}"> 
        {!!$news->para!!}
    </div>
    <div class="col-3">
        <p class="ordernews"><strong>Các tin tức khác</strong></p>
    </div>
</div>
</div>
@stop