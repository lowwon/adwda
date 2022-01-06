@extends('layout')
@section('content')
    <div class="container">
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
                        <option value ="{{$c->TopicId}}">{{$c->Name}}</option>
                        @endforeach
                    </select>              
                </div>
                <div class="dangbai1 col-8 form-group">
                    <input type = "text" name="titlepost" id = "titlepost" class="form-control" placeholder ="Tiêu đề">   
                </div> 
            </div>
            <div class="dangbai2 form-group">
                <textarea name="areapost" id="areapost" rows="30" placeholder ="Tiêu đề" ></textarea>
            </div>
            <div class="dangbai2 form-group"> 
                <input type="submit" class="btn btn-info" value="Đăng bài">
            </div>
        </form>
    </div>
@stop
