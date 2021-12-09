@extends('layout')
@section('content')

    <div class="container-fluid">
        <h1 class="tieude">Cac bai viet moi</h1>
        <div  class="post hidden sm:flex sm:items-center sm:ml-6 ">
            <!-- Teams Dropdown -->
            <!-- Settings Dropdown -->
            @if (Route::has('login'))
                @auth
                <input type="button" class="btn btn-primary" value="Đăng bài" id="db" nam="db">                  
            @else
                <a href="{{ route('login') }}" ><input type="button" class="btn btn-primary" value="Đăng bài"></a>
                @endauth
            @endif
        </div>
        <div class="contents">
           
            <table class="table table-success table-dark">
                <thead>
                    <th class="col-3">Chủ để</th>
                    <th class="col-3">Tiêu đề</th>
                    <th class="col-3">Nội dung</th>
                    <th class="col-3">Người đăng</th>
                </thead>
                <tbody>
                    <tr>
                      <td class="col-3">3</td>
      
                      <td class="col-3">Larry the Bird</td>
                      <td class="col-3">@twitter</td>
                      <td class="col-3">@twitter</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div
@stop
