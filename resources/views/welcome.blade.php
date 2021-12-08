@extends('layout')
@section('content')
    <div class="contents container-fluid">
        <div class="row s">
            <div class="col-3 a">
                Chủ để
            </div>
            <div class="col-3 a">
                Tiêu đề
            </div>
            <div class="col-3 a">
                Nội dung
            </div>
            <div class="col-3 a">
                Người đăng
            </div>
        </div>
        <table class="table table-success table-dark">
            <tbody>
                <tr>
                  <th class="col-3">3</th>
  
                  <td class="col-3">Larry the Bird</td>
                  <td class="col-3">@twitter</td>
                  <td class="col-3">@twitter</td>
                </tr>
            </tbody>
        </table>
    </div>
    
@stop
