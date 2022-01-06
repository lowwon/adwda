@extends('layout')
@section('content')

    <div class="container-fluid">
        <h1 class="tieude">Cac bai viet moi</h1>
        <div  class="post hidden sm:flex sm:items-center sm:ml-6 ">
            <!-- Teams Dropdown -->
            <!-- Settings Dropdown -->
            @if (Route::has('login'))
                @auth
                <a href="{{route('dangbai')}}"><input type="button" class="btn btn-primary" value="Đăng bài" id="db" nam="db"> </a>                 
            @else
                <a href="{{ route('login') }}" ><input type="button" class="btn btn-primary" value="Đăng bài"></a>
                @endauth
            @endif
        </div>
        <div class="contents">          
            <table class="table table-success table-dark">
                <thead>
                    <th class="col-1"><a >Chủ để</a></th>
                    <th class="col-3">Tiêu đề</th>
                    <th class="col-6">Nội dung</th>
                    <th class="col-2">Người đăng</th>
                </thead>
                <tbody>
                    @foreach ($post as $a)
                    <tr>
                        <td class="col-1"><a href="#">{{$a->TopicId}}</a></td>
                        <td class="col-2"><a href="#">
                            <a href="#"><?php
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
                        <td style="" class="col-5">
                            <a href="#"><?php
                                if (strlen($a->Content)>50)
                                {
                                    $str = substr($a->Content,0,50);
                                    echo $str;
                                }                                
                                else{
                                    echo $a->Content;
                                }
                            ?></a>
                            
                            </td>
                        <td class="col-2">{{$a->UserID}}</td>
                    </tr>
                    @endforeach   
                </tbody>
            </table>
        </div>
    </div
@stop
