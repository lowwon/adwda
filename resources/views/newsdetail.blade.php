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
</style>
<div class="container" style="margin-top:30px">
<div class="row">
    <div>
            <b>User</b><br>
            <b>{{$news->create_at}}</b>
    </div>
    <div class="n_detail">        
        <b class="title">{!!$news->title!!}</b> <br>
        <b class="content">{!!$news->content!!}</b> <br>
        <img class="img-news" src="images/{{$news->img}}"> 
        {!!$news->para!!}
    </div>
</div>
</div>
@stop