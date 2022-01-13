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