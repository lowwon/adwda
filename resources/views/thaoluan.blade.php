@extends('layout')
@section('content')
    <div class="container-fluid" style="min-height:700px">
        <div style="margin-top: 4%">
            @if(Auth::check())
                <div class="noti">
                    @if(count($noti) == 0)
                        <img id="show"  class="imgnoti" src="images/tb.jpg">
                    @else
                        <img id="show"  class="imgnoti" src="images/tb1.jpg">
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
            <h1 class="tieude" style="display: inline-block">Các bài viết mới</h1>
            <div class="searchbox">
                <i onclick="showSearch();" id="timkiem" class="gg-search"></i>
                <form action = "{{route('searchall')}}">
                    <input type="text" id="searchtext" name="searchtext">
                </form>
            </div>
            <div style="float: right; display: inline-block;margin-top: -47px;margin-right: 12% " >
                @if (Route::has('login'))
                    @auth
                    @if (Auth::user()->role_id > 1)
                        <a href="{{route('dangbai')}}"><input type="button" class="btn btn-primary" value="Đăng bài" id="db" nam="db"> </a>    
                    @else
                        <button class="btn btn-primary" type="button" onclick="alert('User thường không có quyền đăng bài')">Đăng bài</button>
                    @endif
                                
                @else
                    <a href="{{ route('login') }}" ><input type="button" class="btn btn-primary" value="Đăng bài"></a>
                    @endauth
                @endif
            </div>
        </div>  
        <div class="row">
            <div class="col-9" style="display: inline-block;margin-left: 13%">          
                <table class="table table-hover">
                    <thead>
                        <tr>
                        <th class="col-2">Chủ để</th>
                        <th class="col-4">Tiêu đề</th>
                        <th class="col-3">Ngày đăng</th>
                        <th class="col-2">Người đăng</th>
                        <th class="col-1">Trả lời</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($post as $a)
                        <tr>
                            <td class="col-2">
                                <a href="{{route('thaoluan')}}">
                                    @foreach ($topic as $t)
                                        @if($t->id == $a->topic_id)
                                            {{$t->Name}}
                                        @endif
                                    @endforeach
                                </a>
                            </td>
                            <td class="col-4">
                                <a href="{{route('viewPost',['id'=>$a->id])}}"><?php
                                    if (strlen($a->Name)>40)
                                    {
                                        $str = substr($a->Name,0,40);
                                        echo $str;
                                    }                                
                                    else{
                                        echo $a->Name;
                                    }
                                ?></a>
                            </td>
                            <td  class="col-3">
                                <?php
                                    if (strlen($a->Date)>50)
                                    {
                                        echo $a->Date;
                                    }                                
                                    else{
                                        echo $a->Date;
                                    }
                                ?>
                            </td>
                            <td class="col-2"> 
                                @foreach ($user as $u)
                                    @if($u->id == $a->user_id)
                                        <a  href="{{route('info',['id'=>$u->id])}}">{{$u->name}}</a>
                                    @endif
                                @endforeach
                                
                            </td>
                            <td class="col-1">
                                <?php
                                    $i = 0;
                                    foreach ($comment as $c){
                                        if($c->post_id == $a->id)
                                        {
                                        $i = $i + 1;
                                        }
                                    } 
                                    echo $i;
                                ?>       
                            </td>
                        </tr>
                        @endforeach   
                    </tbody>
                </table>
                {{ $post->links(); }}
            </div>
            
        </div>
    </div>
@stop