@extends('layout')
@section('content')

@if(Auth::check())
    <div class="tbdb">
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
<div class="container" >
    @if($errors->any())
    <div class ="alert alert-danger">
        <ul>
            @foreach($errors-> all() as $error)
            <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <form method = "POST" action = "{{ route('insert') }}" enctype="multipart/form-data">
        {{csrf_field()}}
        <div class="ss form-group">
            <div style="padding-bottom:5px" class="dangbai1 col-3">
                <select class="form-control" name="txttopic" id="txttopic">
                    @foreach($topic as $c)
                    <option  value ="{{$c->id}}">{{$c->Name}}</option>
                    @endforeach
                </select>              
            </div>
            <div class="dangbai1 col-8 form-group">
                <input style="border-radius: 5px 5px 5px 5px" type = "text" name="titlepost" id = "titlepost" class="form-control" placeholder ="Tiêu đề">   
            </div> 
        </div>
        <div class="dangbai2 form-group">
            <textarea name="areapost" id="areapost" placeholder ="Tiêu đề" ></textarea>
        </div>
        <div class="dangbai2 form-group"> 
            <input type="submit" class="btn btn-info" value="Đăng bài">
        </div>
    </form>
    <script src="//cdn.ckeditor.com/4.17.1/full/ckeditor.js"></script>
    <script type="text/javascript">
        CKEDITOR.replace( 'areapost',{
            toolbar: [
            { name: 'basicstyles', items: ['Bold', 'Italic', 'Format'] },
            { name: 'links', items: ['Link', 'Unlink'] },
            { name: 'paragraph', items: ['NumberedList', 'BulletedList'] },
            { name: 'my_clipboard', items: [ 'Cut', 'Copy', 'Paste' ] },
            ], uiColor: '#d1f0fb'
            , width: ['100%'], height: ['800px']
        });
    </script>
</div>
@stop