@extends('layout')
@section('content')
    <div class="container-fluid" style="min-height:700px">
        <div class="col-5 contenttb">
            <p style="margin-left: 20px;font-size: 30px;padding-top: 20px"><b>Thông báo</b></p>
            <div style="padding-bottom: 20px">
                <button id="bt1" class="btn btn-dark bttb">Chưa đọc</button>
                <button id="bt2" class="btn btn-dark bttb">Tất cả</button>
                <a class="deletetb" href="{{route('deleteNoti',['id'=>Auth::user()->id])}}">Xoá tất cả thông báo</a>
            </div>
            @if(count($notiall) == 0)
                <div style="font-size: 30px;text-align: center;padding-bottom: 20px">
                    <p style="margin-top: 15px">Bạn không có thông báo nào</p>
                </div>
            @else
                <div id="thongbaocd" style="display: block">
                @foreach ($noti as $n)
                    <div id="tb_{{$n->id}}"class="noidungtb"> 
                        <p style="display: none" class="idtb">{{$n->id}}</p>
                        <p style="display: none" class="iduser">{{Auth::user()->id}}</p>
                        <a href="{{route('changeNoti',['id'=>$n->id])}}">{{$n->content}}</a>
                        <p style="float: right;margin-top: 15px">{{$n->date}}</p>
                        <input type="button" class="btn btn-info seentb" value="Đánh dấu đã đọc"> 
                        <hr style="margin-top:50px">
                    </div>
                @endforeach
                </div>
                <div id="tcthongbao" style="display: none">
                    @foreach ($notiall as $n)
                        <div class="noidungtb"> 
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
    <script type="text/javascript">

    </script>
@stop