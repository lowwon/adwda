@extends('layout')
@section('content')
    <div class="container-fluid" style="min-height:700px">
        <div class="contents">          
            <table class="table table-hover">
                <thead>
                    <tr>
                    <th class="col-2"><a >Chủ để</a></th>
                    <th class="col-4">Tiêu đề</th>
                    <th class="col-2">Ngày đăng</th>
                    <th class="col-2">Người đăng</th>
                    <th class="col-2">Action</th>
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
                        <td style="" class="col-2">
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
                        <td class="col-2">
                            <a href="{{route('allowP',['id'=>$a->id])}}"><input type="button" class="btn btn-warning"  value="Duyệt"></a>
                            <a href="{{route('deletePAdmin',['id'=>$a->id])}}"><input type="button" class="btn btn-secondary" value="Xoá"></a>  

                        </td>
                    </tr>
                    @endforeach   
                </tbody>
            </table>
            {{ $post->links(); }}
        </div>
    </div>
@stop