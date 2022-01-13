@extends('layout')
@section('content')
<div class="container-fluid row">
    <div class="col-md-7" style="margin-left: 10%;margin-top: 20px; font-size: 35px">
        <div>
            <p style="margin-top: 5px "><strong>
                {{$post->Name}}
            </strong></p>
            <p style="font-size: 20px; display: inline; color:rgb(148, 128, 13) "> Người đăng : 
                @foreach ($user as $u)
                    @if ($post->user_id == $u->id)
                        {{$u->name}}                        
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
                                    <p style="display: inline-block; font-size: 20px; ;margin-top: 10px; color:rgb(7, 96, 122)">{{$u->name}}</p>
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
                                <textarea class ="ckeditor" name="subcomment" id="subcomment"  ></textarea>
                                <input  style="float: right; margin-top: 5px; margin-right: 10px" type="submit" class="btn btn-primary" value="Bình luận">
                            </form>
                            <script>
                                function showsc(id){
                                    if( document.getElementById(id).style.display == 'none')
                                        document.getElementById(id).style.display = 'block';
                                    else 
                                    document.getElementById(id).style.display = 'none';
                                    return false;
                                }
                            </script>
                        </div>
                        <div>
                            <hr style="margin-top:30px;margin-left: 35px">
                            @foreach ($subcomment as $sc)
                                @if ($sc->comment_id == $c->id)
                                    @foreach ($user as $u)
                                        @if($u->id == $sc->user_id)
                                        <p style="display: inline-block;font-size: 15px; margin-left: 75px;margin-top: 10px; color:rgb(160, 24, 47)">{{$u->name}}</p>
                                        @endif
                                    @endforeach
                                    <p style="font-size: 15px;display: inline-block; float: right;margin-top: 10px;margin-right: 15px">{{$sc->Date}}</p>
                                    <div style="font-size: 20px; margin-left: 75px;margin-top: 10px">@php
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
                <a style="font-size:20px;margin-left: 20px" href="{{route('viewPost',['id'=>$item->id])}}">@php
                    if (strlen($item->Name)>40)
                    {
                        $str = substr($item->Name,0,40);
                        echo $str;
                    }                                
                    else{
                        echo $item->Name;
                    }
                @endphp</a>
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
        ], uiColor: '#d1f0fb'
        , width: ['100%'], height: ['100px']
    });
    CKEDITOR.config.width = '98.5%';
    CKEDITOR.config.height = '100px';
</script>
@stop