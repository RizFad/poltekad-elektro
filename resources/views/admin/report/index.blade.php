@extends('layouts.master', ['title' => 'Komponen Keluar'])

@section('content')
    <x-container>
        <div class="col-12">
            <form action="{{ route('admin.report') }}" method="GET">
                <div class="row">
                    <div class="col-6">
                        <x-input title="Tanggal Awal" name="from" type="date" placeholder="" value="{{ $fromDate }}" />
                    </div>
                    <div class="col-6">
                        <x-input title="Tanggal Akhir" name="to" type="date" placeholder="" value="{{ $toDate }}" />
                    </div>
                </div>
                <x-button-save title="Cari Data" icon="search" class="btn btn-primary" />
            </form>
        </div>
        @isset($fromDate, $toDate)
            <div class="col-12 my-3">
                <x-card title="LAPORAN DATA KOMPONEN" class="card-body p-0">
                    <x-table>
                        <thead>
                            <tr>
                                <th>Nama Komponen</th>
                                <th>Kategori Komponen</th>
                                <th>Kuantitas Komponen Saat Ini</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($transactions as $transaction)
                                <tr>
                                    <td>{{ $transaction->details[0]->product->name }}</td>
                                    <td>{{ $transaction->details[0]->product->category->name }}</td>
                                    <td>{{ $transaction->details[0]->product->quantity }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </x-table>
                </x-card>
            </div>
        @endisset
    </x-container>
@endsection
