@extends('layouts.master', ['title' => 'Akun'])

@section('content')
    <x-container>
        <div class="col-12">
            <x-card title="SOP - LAPORAN LAB" class="card-body">
                <img src="{{ asset('SOP-Rencana.jpg') }}" alt="SOP Rencana" class="img-fluid mt-3" style="max-width: 100%;">
                <img src="{{ asset('SOP-Laporan.jpg') }}" alt="SOP Laporan" class="img-fluid mt-3" style="max-width: 100%;">
            </x-card>
        </div>
    </x-container>
@endsection
