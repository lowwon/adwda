@extends('layout')
@section('content')
@if(Auth::check())
    <div style="margin-top : 1%;margin-right:1%;float : right; width: 40px;height: 20px;">
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
                <a style="opacity: 1.0" href="{{route('noti',['id' => Auth::user()->id])}}">View All</a>
            </div>
        </div>
    </div>
@endif
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
                <div class="row" style="float:right">
                    <div class="col-sm-3" style="margin-right: 15px">
                        <a href="{{route('dangtin')}}"><input type="button" class="btn btn-dark" name="dt" id="dt" value="Đăng tin" style="width: 100px; margin-right: 50px; margin-top: -50px"></a>
                    </div>
                    <div class="col-sm-3">
                        <a href="{{route('newslist')}}" ><input type="button" class="btn btn-dark" name="dt" id="dt" value="Xoá tin" style="width: 100px; margin-right: 50px; margin-top: -50px"></a>
                    </div>
                </div> 
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