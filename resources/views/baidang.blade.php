@extends('layout')
@section('content')
<div style="margin-top : -54px;margin-right:30%;float : right; width: 200px;height: 10px;">
    <input type="text" style="display: inline-block;border-radius: 8px 8px 8px 8px" class="form-control" placeholder="Tìm kiếm">
</div>
@if(Auth::check())
    <div style="margin-top : -48px;margin-right:100px;float : right; width: 40px;height: 20px;">
        @if(count($noti) == 0)
            <img id="show" style="float: right;display: inline-block;width: 30px;height:30px;" src="images/tb.jpg">
        @else
            <img id="show" style="float: right;display: inline-block;width: 30px;height:30px;" src="images/tb1.jpg">
        @endif
        <div id="content" style="float: right; font-size: 17px; border-radius:15px 15px 15px 15px; position: relative;display: none; width: 300px; max-height: 580px; margin-top: 20px;background: #c2d0f0">
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
                <a style="opacity: 1.0" href="#">View All</a>
            </div>
        </div>
    </div>
@endif
<div class="container-fluid row">
    <div class="col-md-7" style="margin-left: 10%;margin-top: 20px; font-size: 35px">
        <div>
            <p style="margin-top: 5px "><strong>
                {{$post->Name}}
            </strong></p>
            <p style="font-size: 20px; display: inline; color:rgb(148, 128, 13) "> Người đăng : 
                @foreach ($user as $u)
                    @if ($post->user_id == $u->id)
                        <a  href="{{route('info',['id'=>$u->id])}}">{{$u->name}}</a>      
                        <img width="40px" height="40px" style="display: inline-block; border-radius: 5px 5px 5px 5px;margin-left: 10px;margin-top: -10px" src="images/{{$u->avatar}}">                  
                    @endif
                @endforeach
            </p>
            <p style="font-size: 20px;float: right; margin-top: 17px; display: inline;" >{{$post->Date}}</p>
            <hr style="margin-top: 5px ">
        </div>
        <div style="font-size:20px;margin-top: 10px">
            @php
                echo $post->Content
            @endphp
        </div>
        <div>
            <p style="font-size:20px; margin-top: 20px; margin-bottom: 10px; margin-left: 3px">Bình luận</p>
            @if($errors->any())
            <div style="font-size:20px;margin :5px" class ="text text-danger">
                <ul>
                    @foreach($errors-> all() as $error)
                    <li>{{$error}}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            <form method="POST" action = "{{route('comment',['id'=>$post->id])}}">
                {{csrf_field()}}
                <textarea name="areapost" id="areapost"  ></textarea>
                <input  style="float: right; margin-top: 5px"  type="submit" class="btn btn-primary" value="Bình luận">
            </form>
        </div>
        <div>
            <p style="font-size:20px; margin-top: 20px; margin-bottom: 10px; margin-left: 3px">Các bình luận khác</p>
            @foreach ($comment as $c)
                <div style="background-color: rgb(255, 250, 244); margin-top : 10px;padding-bottom : 25px; font-size: 25px; height: auto; border: 2px solid gray;border-radius: 5px 5px 5px 5px">
                    <div style="font-size: 20px; margin: 15px">
                        
                        @foreach ($user as $u)
                                @if($u->id == $c->user_id)
                                    <img width="40px" height="40px" style="display: inline-block; border-radius: 5px 5px 5px 5px;margin-right: 5px;margin-top: -5px" src="images/{{$u->avatar}}">
                                    <a  href="{{route('info',['id'=>$u->id])}}" style="display: inline-block; font-size: 20px; ;margin-top: 10px; color:rgb(7, 96, 122)">{{$u->name}}</a>
                                @endif
                        @endforeach
                        <p style="display: inline-block; float: right;margin-top: 10px">{{$c->date}}</p>
                    </div>
                    <div>
                        <div style="font-size: 20px; margin-left: 35px;margin-top: 20px">@php
                            echo $c->Content
                        @endphp</div>
                       
                        <a href="javascript:showsc('{{$c->id}}')" style="float: right ; font-size: 15px; margin-right: 15px">Trả lời</a>
                        @can('delete', $c) 
                            <a href="{{route('deleteComment',['id'=>$c->id])}}" style="float: right ; font-size: 15px; margin-right: 15px">Xoá</a> 
                        @endcan
                        <div style="display: none ; margin-top : 30px; margin-left: 55px; margin-bottom: 50px"  id="{{$c->id}}" >
                            <form method="POST" action = "{{route('subcomment',['id'=>$c->id])}}">
                                {{csrf_field()}}
                                <textarea style="width: 700px; border-radius: 5px 5px 5px 5px" required name="subcomment" id="subcomment"  ></textarea>
                                <input  style="float: right; margin-top: 5px; margin-right: 10px" type="submit" class="btn btn-primary" value="Bình luận">
                            </form>
                        </div>
                        <div>
                            <hr style="margin-top:30px;margin-left: 35px">
                            @foreach ($subcomment as $sc)
                                @if ($sc->comment_id == $c->id)
                                    @foreach ($user as $u)
                                        @if($u->id == $sc->user_id)
                                            <img width="30px" height="30px" style="display: inline-block; border-radius: 5px 5px 5px 5px; margin-left: 75px;margin-right: 5px;margin-top: 5px" src="images/{{$u->avatar}}">
                                            <a  href="{{route('info',['id'=>$u->id])}}" style="display: inline-block;font-size: 15px;margin-top: 10px; color:rgb(160, 24, 47)" >{{$u->name}}</a>
                                        @endif
                                    @endforeach
                                    <p style="font-size: 15px;display: inline-block; float: right;margin-top: 10px;margin-right: 15px">{{$sc->Date}}</p>
                                    <div style="font-size: 20px; margin-left: 100px;margin-top: 10px">@php
                                        echo $sc->Content
                                    @endphp</div>
                                    @can('delete',$sc) <a href="{{route('deleteSubComment',['id'=>$sc->id])}}" style="float: right ; font-size: 15px; margin-right: 15px;margin-top: -20px">Xoá</a> @endcan
                                    <hr style="margin-top:10px;margin-left: 75px;margin-top: 10px">
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>    
            @endforeach
            <div style="margin-top:20px; font-size:20">      
                {{ $comment->links(); }}
            </div>
        </div>
    </div>
    <div class="col-md-3" style="margin-top: 20px;height: auto">
        <p style="font-size:20px;margin-top: 10px;margin-bottom: 10px" ><b>Câu hỏi cùng chủ đề</b></p>
        @foreach ($allpost as $item)
            @if($item->id != $post->id)
                <a style="font-size:20px;margin-left: 20px;margin-top: 30px" href="{{route('viewPost',['id'=>$item->id])}}">
                @php
                    if (strlen($item->Name)>40)
                    {
                        $str = substr($item->Name,0,40);
                        echo $str;
                    }                                
                    else{
                        echo $item->Name;
                    }
                @endphp
                </a>
                <p style="font-size:15px;margin-left: 20px;margin-bottom: 5px">{{$item->Date}}</p>
                <hr>
            @endif
        @endforeach
        <div>
            @can('delete', $post)
            <form method="POST" action = "{{route('delete',['id'=>$post->id])}}">
                @method('DELETE')
                @csrf
            <input style = "float: right;margin: 10px" type="submit" value="Xoá bài" class="btn btn-danger">
            <form>
        @endcan
        </div>
    </div>
</div>
<script src="//cdn.ckeditor.com/4.17.1/basic/ckeditor.js"></script>
<script type="text/javascript">
    CKEDITOR.replace( 'areapost',{
        toolbar: [
        { name: 'basicstyles', items: ['Bold', 'Italic'] },
        { name: 'links', items: ['Link', 'Unlink'] },
        { name: 'paragraph', items: ['NumberedList', 'BulletedList'] }
        ]
        , width: ['100%'], height: ['100px']
    });
    CKEDITOR.config.width = '98.5%';
    CKEDITOR.config.height = '100px';
    function showsc(id){
        if( document.getElementById(id).style.display == 'none')
            document.getElementById(id).style.display = 'block';
        else 
        document.getElementById(id).style.display = 'none';
        return false;
    }
</script>
@stop