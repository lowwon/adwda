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
        <script src="//cdn.ckeditor.com/4.17.1/basic/ckeditor.js"></script>
        <script type="text/javascript">
            CKEDITOR.replace( 'areapost',{
                toolbar: [
                { name: 'basicstyles', items: ['Bold', 'Italic'] },
                { name: 'links', items: ['Link', 'Unlink'] },
                { name: 'paragraph', items: ['NumberedList', 'BulletedList'] }
                ], uiColor: '#d1f0fb'
                , width: ['100%'], height: ['800px']
            });
        </script>
    </div>
@stop