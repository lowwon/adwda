@extends('layout')
@section('content')
    <div class="container-fluid" style="min-height:700px">
        <h1 class="tieude">Cac bai viet moi</h1>
        <div  class="post hidden sm:flex sm:items-center sm:ml-6 ">
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
        <div class="contents">          
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
                        <td class="col-2"><a
                            @if ($a->topic_id == 1) 
                                href="{{route('thaoluan')}}"
                            @else 
                            {
                                @if ($a->topic_id == 2)
                                    href="{{route('hoidap')}}"
                                @else
                                    href="{{route('chiase')}}"
                                @endif
                            }
                            @endif
                            >
                            @foreach ($topic as $t)
                            @if($t->id == $a->topic_id)

                                     {{$t->Name}}
                                @endif
                            @endforeach
                        </a></td>
                        <td class="col-4"><a href="#">
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
                        </a></td>
                        <td style="" class="col-3">
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
@stop