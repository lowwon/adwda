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

@if(Auth::check())
    <div style="margin-top : -48px;margin-right:100px;float : right; width: 40px;height: 20px;">
        @if(count($noti) == 0)
            <img id="show" class="imgnoti" src="images/tb.jpg">
        @else
            <img id="show" class="imgnoti" src="images/tb1.jpg">
        @endif
        <div id="content" class="notibox">
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
                <a style="opacity: 1.0" href="{{route('noti',['id' => Auth::user()->id])}}">View All</a>
            </div>
        </div>
    </div>
@endif
<div class="container" style="margin-top:30px">
<div class="row">
    <div class="n_detail col-7">        
        <b class="title">{!!$news->title!!}</b> <br>
        <b class="content">{!!$news->content!!}</b> <br>
        <img class="img-news" src="images/{{$news->img}}"> 
        <br>
        <div style=" text-align: justify">
            {!!$news->para!!}
        </div>
        
        <div style="float:right;">
            <b>Post by {{$news->User->name}}</b></br>
            <b>{{$news->create_at}}</b>
        </div>
    </div>
    <div class="col-4">
        <p class="ordernews"><strong>Các tin tức khác</strong></p>
        @foreach($other as $o)
            <div class="row" style = "margin-top: 10px">
                <div class="col-md-5">
                    <a href="{{route('ndtintuc',['id' => $o->id])}}">
                        <img src="images/{{$o->img}}" class="img-fluid" style="height:110px; width:300px">
                    </a>
                </div>
                <div class="col-md-7" style= "text-align: justify;">
                    <div class="ten" style="width:300px">
                        <a href="{{route('ndtintuc',['id' => $o->id])}}"><b>{!!$o->title!!}</b></a>
                        <p>{!!$o->content!!}</p>
                    </div>
                </div> 
            </div>
            <hr style="width:500px; margin-top: 20px; margin-bottom: 20px">
        @endforeach
    </div>
</div>
</div>
@stop