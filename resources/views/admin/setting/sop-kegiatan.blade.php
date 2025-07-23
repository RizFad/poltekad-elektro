@extends('layouts.master', ['title' => 'Akun'])

@section('content')
    <x-container>
        <div class="col-12">
            <x-card title="PETUNJUK - PENGGUNAAN" class="card-body">
                <img src="{{ asset('daftar.jpeg') }}" alt="Petunjuk Daftar" class="img-fluid mt-3" style="max-width: 100%;">
                <img src="{{ asset('maba.jpeg') }}" alt="Petunjuk Penggunaan" class="img-fluid mt-3" style="max-width: 100%;">
            </x-card>
        </div>
    </x-container>
@endsection
