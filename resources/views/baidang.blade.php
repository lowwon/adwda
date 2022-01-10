@extends('layout')
@section('content')
<div class="container-fluid row">
    <div class="col-md-7" style="margin-left: 10%;margin-top: 20px; font-size: 35px">
        <div>
            <p style="margin-top: 5px ">
                {{$post->Name}}
            </p>
            <hr style="margin-top: 5px ">
        </div>
        <div style="font-size:20px;margin-top: 10px">
            @php
                echo $post->Content
            @endphp
        </div>
        <div>
            <p style="font-size:20px; margin-top: 20px; margin-bottom: 10px; margin-left: 3px">Bình luận</p>
            <form >
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
                                    {{$u->name}}
                                @endif
                        @endforeach
                        <hr>
                    </div>
                    <div>
                        <p style="font-size: 20px; margin-left: 35px;margin-top: 10px">{{$c->Content}}</p>
                        <a href="" style="float: right ; font-size: 15px; margin-right: 5px">Trả lời</a>
                    </div>
                </div>    
            @endforeach
        </div>
    </div>
    <div class="col-md-3" style="margin-top: 20px;height: auto">
        <p style="font-size:20px;margin-top: 10px;margin-bottom: 10px" ><b>Câu hỏi cùng chủ đề</b></p>
        @foreach ($allpost as $item)
            @if($item->id != $post->id)
                <a style="font-size:20px;margin-left: 25px" href="{{route('viewPost',['id'=>$item->id])}}">@php
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
</script>

@stop