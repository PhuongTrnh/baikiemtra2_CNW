@extends('master')

@section('title', 'Category Details')

@section('content')

<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col col-md-6"><b>Channel Details</b></div>
            <div class="col col-md-6">
                <a href="{{ route('channels.index') }}" class="btn btn-primary btn-sm float-end">View All</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form">Channel Name</label>
            <div class="col-sm-10">
                <p class="form-control-static">{{ $channel->name }}</p>
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form">Description</label>
            <div class="col-sm-10">
                <p class="form-control-static">{{ $channel->description }}</p>
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form">Subscribers Count</label>
            <div class="col-sm-10">
                <p class="form-control-static">{{ $channel->subscribersCount }}</p>
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form">URL</label>
            <div class="col-sm-10">
                <p class="form-control-static">{{ $channel->URL }}</p>
            </div>
        </div>
    </div>
</div>

@endsection('content')