@extends('layout')
@section('content')
<label>{{$post->user_id}}</label>
<label>{{Auth::user()->id}}</label>

@can('delete', $post)
    <form method="POST" action = "{{route('delete',['id'=>$post->id])}}">
        @method('DELETE')
        @csrf
    <input type="submit" value="Xoá bài" class="btn btn-danger">
    <form>
@endcan

@stop