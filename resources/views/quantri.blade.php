@extends('layout')
@section('content')
    <style>
        .hinh{
            float: right;
            display: inline-block; 
            padding-top: 10px;
            padding-right: 10px; 
            border-radius : 2px 2px 2px 2px;
        }
        </style>
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
    <div class="container-fluid" style="min-height:700px">
        <div class="quantri1">
            <div class="col-1 quantri2">ID</div>
            <div class="col-3 quantri2">Name</div>
            <div  class="col-4 quantri2">Role</div>
            <div class="col-2 quantri2">Action</div>
        </div>     
        @foreach ($user as $u)
            <div class="quantri4">
                <form method="POST" action="{{route('saveRole',['id'=>$u->id]) }}">
                    @csrf
                    <div class="col-1 quantri3"> <p style="margin-top: 15px" id="userid" name="userid" >{{$u->id}} </p></div>
                    <div class="col-3 quantri3">
                         <p style="margin-top: 15px" >{{$u->name}} </p>    
                         {{-- <a href="javascript:openModal('{{$u->id}}')"> chinh sửa </a> --}}

                    </div>
                    <div  class="col-4 quantri3">
                        <div style="display: inline-block;" class="form-check">
                            @if ($u->role_id == 1)
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="user" value="1" checked>
                            @else
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="user" value="1">
                            @endif
                            <label class="form-check-label" for="radios"> <p style="margin-top: 15px" >User </p></label>
                        </div>
                        <div  style="display: inline-block;" class="form-check">
                            @if ($u->role_id == 2)
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="userp" value="2" checked>
                            @else
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="userp" value="2">
                            @endif
                            <label class="form-check-label" for="radios"> <p style="margin-top: 15px" >UserPrimary </p></label>
                        </div>
                        <div  style="display: inline-block;" class="form-check">
                            @if ($u->role_id == 3)
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="admin" value="3" checked>
                            @else
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="admin" value="3">                  
                                @endif
                            <label class="form-check-label" for="radios"> <p style="margin-top: 15px" >Admin </p></label>
                        </div>
                        <div  style="display: inline-block;" class="form-check">
                            @if ($u->role_id == 4)
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="admins" value="4" checked>
                            @else
                                <input style="margin-top: 15px" class="form-check-input" type="radio" name="radios" id="admins" value="4">
                                @endif
                            <label class="form-check-label" for="radios"> <p style="margin-top: 15px" > SuperAdmin </p></label> 
                        </div>
                    </div>
                    <div class="col-2 quantri3"><p style="margin-top: 11px" >
                        <button type="button" style="margin-top: -5px" class="btn btn-danger"><a style="color: black"href="{{ route('deleteUser',['id'=>$u->id])}}">Delete</a></button>
                        <button type="submit" style="margin-top: -5px" class="btn btn-warning">Save</button>
                    <p></div>
                </form>
                
            </div>

        @endforeach   
        {{-- <div style="text-align:left" id="divModal" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    
                </div>
            </div>
        </div>     --}}
    </div>
@stop