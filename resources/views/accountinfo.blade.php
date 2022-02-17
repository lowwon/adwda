@extends('layout')
@section('content')
@if(Auth::check())
    <div class="noti1">
        @if(count($noti) == 0)
            <img id="show" class="imgnoti" src="images/tb.jpg">
        @else
            <img id="show" class="imgnoti" src="images/tb1.jpg">
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
                <a href="{{route('noti',['id' => Auth::user()->id])}}">View All</a>
            </div>
        </div>
    </div>
@endif
    <div class="container-fluid row" style="max-height: 700px;margin-bottom: 100px">    
        @if (Auth::user()->id == $user->id || Auth::user()->role_id > $user->role_id && Auth::user()->role_id > 2)
            @if($errors->any())
                <div class="alert text-danger"  style="font-size: 30px;margin-left: 10%; margin-top: 0px; margin-bottom: -60px">
                    <ul>
                        @foreach ($errors->all() as $e)
                        <li>
                            {{$e}}
                        </li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="col-6 mainacc">
                <form method="POST" action="{{route('updateAvatar',['id'=>$user->id])}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div >
                        <img id="imgs" class="imginfo" width="200px" height="200px" src="images/{{$user->avatar}}">
                        <label class="choseimg" >
                            <input name="fileUpLoad" id = "fileUpLoad" style = "display: none" type="file" accept="image/png, image/gif, image/jpeg"/>
                            Chosse Image
                        </label>
                        <label class="labelchoseimg">
                            <button style = "display: none" type="submit" value="Change Avatar" class="btn btn-dark"></button>Change Avatar
                        </label>
                        <script>
                            document.getElementById("fileUpLoad").onchange = function(){
                                var reader = new FileReader();
                                reader.onload = function(e){
                                    document.getElementById("imgs").src = e.target.result;
                                }
                                reader.readAsDataURL(this.files[0]);
                            }
                        </script>      
                    </div>
                </form>
                <form method="POST" action="{{route('updateUser',['id'=>$user->id])}}" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div> 
                        Name : 
                        <input required ="name" name="name" type="text" value="{{$user->name}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >
                    </div> 
                    <div style="margin-top: 20px"> 
                        Email : 
                        <input required id='email' name="email" type="text" value="{{$user->email}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >
                    </div> 
                    <div  style="margin-top: 20px"> 
                        Birthday : 
                        <input required id="birthday" name="birthday" type="date" value="{{$user->birthday}}" style="width: 500px: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >            
                    </div> 
                    <div  style="margin-top: 20px"> 
                        Sex :
                        <select required id="sex" name="sex" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px"  >
                            @if($user->sex == 'Nam'){
                                <option selected="selected" value="Nam">Nam</option>
                                <option value="Nữ">Nữ</option>
                                <option value="LGBT">LGBT</option>
                            }
                            @elseif($user->sex =='Nữ')
                            {
                                <option value="Nam">Nam</option>
                                <option selected="selected" value="Nữ">Nữ</option>
                                <option value="LGBT">LGBT</option>
                            }
                            @else{
                                <option value="Nam">Nam</option>
                                <option value="Nữ">Nữ</option>
                                <option selected="selected" value="LGBT">LGBT</option>
                            }
                            @endif
                        </select>  
                    </div> 
                    <div  style="margin-top: 20px"> 
                        Phone :
                        <input required id="phone" name="phone" type="number" value="{{$user->phone}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >            
                    </div>
                    <div  style="margin-top: 20px">
                        Country :
                        <select required id="ct" name="ct" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px">
                            @foreach($country as $c){
                                @if($user->country == $c){
                                    <option selected="selected" value="{{$c}}">{{$c}}</option>
                                }
                                @else{
                                    <option value="{{$c}}">{{$c}}</option>
                                }
                                @endif
                            }
                            @endforeach
                        </select>   
                    </div>    
                    <div style="margin-top: 20px; float: right;margin-right: 170px">
                        <input type="submit" value="Cập nhật" class="btn btn-dark"> 
                    </div>
                </form>
        @else 
            <div  class="col-6" style="font-size: 20px;margin-left: 10%; margin-top: 70px">
                <div >
                    <img id="imgs" class="imginfo" width="200px" height="200px" src="images/{{$user->avatar}}">   
                </div>
                <div> 
                    Name : 
                    <p  class ="guess" >{{$user->name}} </p>
                </div> 
                <div style="margin-top: 20px"> 
                    Email : 
                    <p class ="guess" >{{$user->email}}</p>
                </div> 
                <div  style="margin-top: 20px"> 
                    Birthday : 
                    <p class ="guess"  >{{$user->birthday}} </p>         
                </div> 
                <div  style="margin-top: 20px"> 
                    Sex :
                    <p class ="guess" > {{$user->sex}}  </p>          
                </div> 
                <div style="margin-top: 20px"> 
                    Phone :
                    <p  class ="guess" > 
                        @php
                            if(strlen($user->phone) > 7)
                            {
                                $a = substr($user->phone,0,7)."***";
                                echo $a;
                            }
                            else
                            {
                                $f = 10-strlen($user->phone);
                                $i = 0;
                                $x = "";
                                for($i = 0; $i < $f; $i++)
                                {
                                    $x .= "*";
                                }
                                echo $user->phone.$x;
                            }
                        @endphp
                    </p>        
                </div>
                <div style="margin-top: 20px">
                    Contry :
                    <p class ="guess" > {{$user->country}}  </p>         
                </div>
            @endif
            <script>
            </script>
    </div>
        <div class="col-4" style="max-height: 700px" > 
            <div>
                <p style="font-size: 30px; margin-top:20px"><strong>Các bài viết gần đây</strong></p>
                @foreach ($post as $p)
                    <p style="font-size: 20px; margin-top:20px" ><a href="{{route('viewPost',['id'=>$p->id])}}">{{$p->Name}}</a></p>
                    <hr style="margin-top:10px" >
                @endforeach

            </div>
        </div>
    </div>
@stop