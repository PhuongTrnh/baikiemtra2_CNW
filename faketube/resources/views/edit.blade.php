@extends('master')

@section('title', 'Edit Channel')

@section('content')

<div class="card">
    <div class="card-header">Edit Channel</div>
    <div class="card-body">
        <form method="post" action="{{ route('channels.update', $channel->id) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Channel Name</label>
                <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" value="{{ $channel->name }}" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Description</label>
                <div class="col-sm-10">
                    <textarea name="description" class="form-control">{{ $channel->description }}</textarea>
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Subscribers Count</label>
                <div class="col-sm-10">
                    <input type="number" name="subscribersCount" class="form-control" value="{{ $channel->subscribersCount }}" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">URL</label>
                <div class="col-sm-10">
                    <input type="text" name="URL" class="form-control" value="{{ $channel->URL }}" />
                </div>
            </div>            
            <div class="text-center">
                <input type="hidden" name="hidden_id" value="{{ $channel->id }}" />
                <input type="submit" class="btn btn-primary" value="Save" />
            </div>
        </form>
    </div>
</div>

@endsection('content')
