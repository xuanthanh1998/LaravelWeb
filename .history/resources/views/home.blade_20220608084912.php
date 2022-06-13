@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
      

        @foreach ($tintuc as $tt)
            <div class="col-md-8" style="margin-bottom: 10px">
                <div class="card">
                    <div class="card-header"><b>({{ $tt->id }})</b> {{ $tt->TieuDe }}</div>
                    <div class="card-body">
                        {{ $tt->TomTat }}
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection