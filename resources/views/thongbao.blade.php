@extends('layout')
@section('content')
    <div class="container-fluid" style="min-height:700px">
        <div class="col-5" style="border-radius: 5px 5px 5px 5px ; margin-left: 30%; margin-top:20px;background-color: darkgray">
            <p style="margin-left: 20px;font-size: 30px;padding-top: 20px"><b>Thông báo</b></p>
            <div style="padding-bottom: 20px">
                <button id="bt1" style="margin-left: 20px; margin-top: 20px;border-radius: 10px 10px 10px 10px" class="btn btn-primary">Chưa đọc</button>
                <button id="bt2" style="margin-left: 20px;  margin-top: 20px;border-radius: 10px 10px 10px 10px" class="btn btn-primary">Tất cả</button>
                <a style="float: right;margin-right: 20px;display: inline;font-size: 20px;margin-top: 25px" href="{{route('deleteNoti',['id'=>Auth::user()->id])}}">Xoá tất cả thông báo</a>
            </div>
            @if(count($notiall) == 0)
                <div style="font-size: 30px;text-align: center;padding-bottom: 20px">
                    <p style="margin-top: 15px">Bạn không có thông báo nào</p>
                </div>
            @else
                <div id="thongbaocd" style="display: block">
                @foreach ($noti as $n)
                    <div style="position: static;margin: 20px;font-size: 20px"> 
                        <a href="{{route('changeNoti',['id'=>$n->id])}}">{{$n->content}}</a>
                        <p style="float: right;margin-top: 15px">{{$n->date}}</p>
                        <hr style="margin-top:50px">
                    </div>
                @endforeach
                </div>
                <div id="tcthongbao" style="display: none">
                    @foreach ($notiall as $n)
                        <div style="position: static;margin: 20px;font-size: 20px"> 
                            <a href="{{route('changeNoti',['id'=>$n->id])}}">{{$n->content}}</a>
                            <p style="float: right;margin-top: 15px">{{$n->date}}</p>
                            <hr style="margin-top:50px">
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </div>
    <script>
        document.getElementById("bt1").onclick = function(){
            if(document.getElementById("thongbaocd").style.display == 'none')
            {
                document.getElementById("thongbaocd").style.display = 'block'
                document.getElementById("tcthongbao").style.display = 'none'
            }
            return false;        
        }
        document.getElementById("bt2").onclick = function(){
            if(document.getElementById("tcthongbao").style.display == 'none')
            {
                document.getElementById("tcthongbao").style.display = 'block'
                document.getElementById("thongbaocd").style.display = 'none'
            }
            return false;        
        }
    </script>
@stop