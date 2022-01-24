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
                <a style="opacity: 1.0" href="#">View All</a>
            </div>
        </div>
    </div>
@endif
<div class="container-fluid row">
    <div class="col-md-1" style="margin-left: 3%; height: 700px">
        <div style="margin-top: 210px; position: fixed">
            <p id="count_like" style="text-align: center; font-size: 25px">{{$post->number_like}}</p>
            @if(Auth::check())
                @if($check == 1)
                    @foreach ($post_user as $p)
                        @if($p->user_id == Auth::user()->id)
                            @if($p->checklike == 1)
                                <p style="display: none" id="checkx">1</p>
                                <a class="x" href="{{route('likePost',['id'=>$post->id])}}"><i id="number_like" style="background-color:gold; margin-bottom: 20px" class="gg-arrow-up-r"></i></a>
                                <a class="x" href="{{route('dislikePost',['id'=>$post->id])}}"><i id="number_dislike" style="margin-left: 1px" class="gg-arrow-down-r"></i></a>
                            @else
                                <p style="display: none" id="checkx">2</p>
                                <a class="x" href="{{route('likePost',['id'=>$post->id])}}"><i id="number_like" style="margin-bottom: 20px" class="gg-arrow-up-r"></i></a>
                                <a class="x" href="{{route('dislikePost',['id'=>$post->id])}}"><i id="number_dislike" style="background-color:gold; margin-left: 1px" class="gg-arrow-down-r"></i></a>
                            @endif
                        @endif
                    @endforeach
                @else
                    <p style="display: none" id="checkx">0</p>
                    <a class="x" href="{{route('likePost',['id'=>$post->id])}}"><i id="number_like" style="margin-bottom: 20px" class="gg-arrow-up-r"></i></a>
                    <a class="x" href="{{route('dislikePost',['id'=>$post->id])}}"><i id="number_dislike" style="margin-left: 1px" class="gg-arrow-down-r"></i></a>
                @endif
            @else 
                <a href="{{route('login')}}"><i style="margin-bottom: 20px" class="gg-arrow-up-r"></i></a>
                <a href="{{route('login')}}"><i style="margin-bottom: 20px" class="gg-arrow-down-r"></i></a>
            @endif
            <p id="count_dislike" style="text-align: center; font-size: 25px">{{$post->number_dislike}}</p>
        </div>
    </div>
    <div class="col-md-7" style="margin-top: 20px; font-size: 35px">
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
            <p style="font-size: 20px;color:red;margin-bottom: 10px" id="errorcmt"></p>
            <p style="display: none" id="idpost" value="{{$post->id}}">{{$post->id}}</p>
            <form id="formxx" method="POST" action = "{{route('comment',['id'=>$post->id])}}">
                {{ csrf_field() }}
                @csrf
                <textarea style="width: 830px; height : 100px; border-radius: 5px 5px 5px 5px"  name="areapostx" id="areapostx"></textarea>
                @if(Auth::check())
                    <input id="commentButton" style="float: right; margin-top: 5px"  type="submit" class="btn btn-primary" value="Bình luận">
                @else 
                    <a href="{{route('login')}}"><input style="float: right; margin-top: 5px"  type="submit" class="btn btn-primary" value="Bình luận"></a>
                @endif
            </form>
        </div>
        <div>
            <p style="font-size:20px; margin-top: 20px; margin-bottom: 10px; margin-left: 3px">Các bình luận khác</p>
            <div class="binhluan">
                @foreach ($comment as $c)
                    <div id="{{$c->id}}" class="bltt" style=" margin-top : 10px;padding-bottom : 25px; font-size: 25px; height: auto; border: 2px solid gray;border-radius: 5px 5px 5px 5px">
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
                            @if(Auth::check())
                                <a href="javascript:showsc('A_{{$c->id}}')" style="float: right ; font-size: 15px; margin-right: 15px">Trả lời</a>
                            @else 
                                <a href="{{route('login')}}" style="float: right ; font-size: 15px; margin-right: 15px">Trả lời</a>
                            @endif
                            @can('delete', $c) 
                                @foreach ($user as $u)
                                    @if($u->id == $c->user_id)
                                        @if(Auth::user()->role_id > $u->role_id)
                                            <a class="xoacmt" href="#" style="float: right ; font-size: 15px; margin-right: 15px">Xoá</a> 
                                        @endif     
                                    @endif
                                @endforeach
                            @endcan
                            <div style="display: none ; margin-top : 30px; margin-left: 55px; margin-bottom: 50px"  id="A_{{$c->id}}" >
                                <p class="errsubcmt" style="font-size: 18px; color:red; margin-top: -15;margin-bottom: 5px"></p>
                                <form method="POST" action = "{{route('subcomment',['id'=>$c->id])}}">
                                    {{csrf_field()}}
                                    <input style="display: none" id="idcmt" name="idcmt" value="{{$c->id}}">
                                    <textarea style="width: 675px; border-radius: 5px 5px 5px 5px" required name="subcomment" id="subcomment"></textarea>
                                    <input style="float: right; margin-top: 5px; margin-right: 10px" type="submit" class="btn btn-primary subbutton" value="Bình luận">
                                </form>
                            </div>
                            <div>
                                <hr style="margin-top:30px;margin-left: 35px">
                                <div class="binhluancon" id="blc_{{$c->id}}">
                                @foreach ($subcomment as $sc)
                                    @if ($sc->comment_id == $c->id)
                                    <div id="{{$sc->id}}">
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
                                        @can('delete',$sc)
                                        <p class = "subcmt" style="display: none">{{$sc->id}}</p>
                                        <a href="{{route('deleteSubComment',['id'=>$sc->id])}}" class="xoasubcmt" style="float: right ; font-size: 15px; margin-right: 15px;margin-top: -20px">Xoá</a> 
                                        @endcan
                                        <hr style="margin-top:10px;margin-left: 75px;margin-top: 10px">
                                    </div>
                                    @endif
                                @endforeach
                                </div>
                            </div>
                        </div>
                    </div>    
                @endforeach
            </div>
            <div style="margin-top:40px; font-size:20;margin-bottom: 100px">      
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
            <form id="form2" method="POST" action = "{{route('delete',['id'=>$post->id])}}">
                @method('DELETE')
                @csrf
            <input id="deleteButton" style = "float: right;margin: 10px" type="submit" value="Xoá bài" class="btn btn-danger">
            <form>
        @endcan
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('#number_like').click(function(event){
            event.preventDefault();
            var id = $("#idpost").text();
            console.log(id);
            $.ajax({
                type: 'GET',
                url: '/likepost/' + id, 
                data:  {
                    id : id
                },
                success: function(){
                    var count = $("#count_like").text();
                    var count2 = $("#count_dislike").text();
                    var checkx = $('#checkx').text();
                    console.log(checkx);
                    if(checkx != 1){
                        var z = parseInt(count);
                        z = z+ 1
                        console.log(z);
                        if(checkx == 2){
                            var k = parseInt(count2);
                            k = k - 1;
                            var id2 = 'number_dislike';
                            document.getElementById(id2).style.backgroundColor = 'initial';
                            $('#count_dislike').html(k);
                        }
                        console.log(z);
                        var id1 = 'number_like';
                        document.getElementById(id1).style.backgroundColor = 'gold';
                        $('#count_like').html(z);
                        $('#checkx').html('1');
                    }
                    else{
                        var z = parseInt(count);
                        z = z - 1
                        console.log(z);
                        var id1 = 'number_like';
                        document.getElementById(id1).style.backgroundColor = 'initial';
                        $('#count_like').html(z);
                        $('#checkx').html('0');
                    }
                    console.log('it works!');
                } 
            });
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('#number_dislike').click(function(event){
            event.preventDefault();
            var id = $("#idpost").text();
            console.log(id);
            $.ajax({
                type: 'GET',
                url: '/dislikepost/' + id, 
                data:  {
                    id : id
                },
                success: function(){
                    var count = $("#count_dislike").text();
                    var count2 = $('#count_like').text();
                    var checkx = $('#checkx').text();
                    console.log(checkx);
                    if(checkx != 2){
                        var z = parseInt(count);
                        z = z+ 1
                        if(checkx == 1){
                            var k = parseInt(count2);
                            k = k-1;
                            var id2 = 'number_like';
                            document.getElementById(id2).style.backgroundColor = 'initial';
                            $('#count_like').html(k);
                        }
                        console.log(z);
                        var id1 = 'number_dislike';                        
                        document.getElementById(id1).style.backgroundColor = 'gold';
                        $('#count_dislike').html(z);
                        $('#checkx').html('2');
                        }
                    else{
                        var z = parseInt(count);
                        z = z - 1
                        console.log(z);
                        var id1 = 'number_dislike';
                        document.getElementById(id1).style.backgroundColor = 'initial';
                        $('#count_dislike').html(z);
                        $('#checkx').html('0');
                    }
                    console.log('it works!');
                } 
            });
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.xoasubcmt').each(function(index){
            $(this).click(function(event){
                event.preventDefault();
                var id =  $(".subcmt").eq(index).text()
                console.log(id);
                $.ajax({
                    type: 'GET',
                    url: '/delete/subcomment/' + id, 
                    data:  {
                        id : id
                    },
                    success: function(){
                        document.getElementById(id).style.display = 'none';
                        console.log('it works!');
                    } 
                });
            });
        });
    });
</script>

<script type="text/javascript">
    $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.xoacmt').each(function(index){
            $(this).click(function(event){
                event.preventDefault();
                var id = $("input[name=idcmt]").eq(index).val();
                console.log(id);
                    $.ajax({
                        type: 'GET',
                        url: '/delete/comment/' + id, 
                        data:  {
                            id : id
                        },
                        success: function(){
                            document.getElementById(id).style.display = 'none';
                            console.log('it works!');
                        } 
                    });
            });
        });
    });
</script>

<script type="text/javascript">
    $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.subbutton').each(function(index){
            $(this).click(function(event){
                event.preventDefault();
                var id = $("input[name=idcmt]").eq(index).val();
                var request = $("textarea[name=subcomment]").eq(index).val();
                console.log(id);
                $.ajax({
                    type: 'POST',
                    url: '/subcomment/' + id, 
                    data:  {
                        request : request,
                        id : id
                    },
                    success: function(){
                        if(request == ""){
                            $('.errsubcmt').eq(index).html("Bạn chưa nhập nội dung bình luận");
                        }
                        else{
                            var idz = 'blc_'+id
                            console.log(idz);
                            $("textarea[name=subcomment]").eq(index).val("");
                            var html = "@if(Auth::check())"
                            html += '<div>';
                            html += '<img width="30px" height="30px" style="display: inline-block; border-radius: 5px 5px 5px 5px; margin-left: 75px;margin-right: 5px;margin-top: 5px" src="images/{{Auth::user()->avatar}}">'
                            html += '<a  href="{{route('info',['id'=>Auth::user()->id])}}" style="display: inline-block;font-size: 15px;margin-top: 10px; color:rgb(160, 24, 47)" >{{Auth::user()->name}}</a>'
                            html += '<p style="font-size: 15px;display: inline-block; float: right;margin-top: 10px;margin-right: 15px">just now</p>'
                            html += '<div style="font-size: 20px; margin-left: 100px;margin-top: 10px">'
                            html += request
                            html += '</div>'
                            html += '<hr style="margin-top:10px;margin-left: 75px;margin-top: 10px">'
                            html += "@endif"
                            // html += '</div>'
                            // html += '</div>'
                            $('.binhluancon').eq(index).append(html);
                            $('.errsubcmt').eq(index).text("")
                            console.log('it works!');
                        }
                    } 
                });
            });
        });
    });
</script>


<script type="text/javascript">
    $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $("#commentButton").click(function(event){
        event.preventDefault();
        var id = $("#idpost").text();
        var request = $("textarea[name=areapostx]").val();
        var obj = JSON.stringify(request);
        console.log(request);
        console.log(obj);
        $.ajax({
            type: 'POST',
            url: '/comment/' + id, 
            data:  {
                request : request,
                id : id
            },
            success: function(){
            if(request == ""){
                $('#errorcmt').html("Bạn chưa nhập nội dung bình luận");
            }
            else{
                var now = new Date();
                var html = "@if(Auth::check())"
                html += '<div style="background: linear-gradient(to right, #abfcff, #ffbdf4); margin-top : 10px;padding-bottom : 25px; font-size: 25px; height: auto; border: 2px solid gray;border-radius: 5px 5px 5px 5px">';
                html += '<div style="font-size: 20px; margin: 15px">'
                html += '<img width="40px" height="40px" style="display: inline-block; border-radius: 5px 5px 5px 5px;margin-right: 5px;margin-top: -5px" src="images/{{Auth::user()->avatar}}">'
                html += '<a  href="{{route('info',['id'=>$u->id])}}" style="display: inline-block; margin-left:5px; font-size: 20px; ;margin-top: 10px; color:rgb(7, 96, 122)">{{Auth::user()->name}}</a>'
                html += '<p style="display: inline-block; float: right;margin-top: 10px">just now</p>'
                html += '<div style="font-size: 20px; margin-left: 35px;margin-top: 20px">'
                html += request
                html += '</div>'
                html += '<a href="{{route('deleteComment2',['id'=>Auth::user()->id])}}" style="float: right ; font-size: 15px; margin-right: 15px">Xoá</a>'
                html += '</div>'
                html += '</div>'
                html += "@endif"
                $("textarea[name=areapostx]").val("");
                $('.binhluan').prepend(html);
                $('#errorcmt').text("")
                console.log('it works!');
            }                
        }
        });
    });
    });
</script>

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