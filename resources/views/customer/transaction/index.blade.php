@extends('layouts.master', ['title' => 'Peminjaman'])

@section('content')
    <x-container>
        <div class="col-12">
            <x-card title="DAFTAR PEMINJAMAN" class="card-body p-0">
                <x-table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Invoice</th>
                            <th>Nama Komponen</th>
                            <th>Kategori Komponen</th>
                            <th>Kuantitas</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($transactions as $i => $transaction)
                            <tr>
                                <td>{{ $i + $transactions->firstItem() }}</td>
                                <td>{{ $transaction->user->name }}</td>
                                <td>
                                    @foreach ($transaction->details as $details)
                                        <li>{{ $details->product->name }}</li>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach ($transaction->details as $details)
                                        <li>{{ $details->product->category->name }}</li>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach ($transaction->details as $details)
                                        <li>{{ $details->quantity }} - {{ $details->product->unit }}</li>
                                    @endforeach
                                </td>
                            </tr>
                        @endforeach
                        <tr>
                            <td colspan="4" class="font-weight-bold text-uppercase">
                                Total Peminjaman
                            </td>
                            <td class="font-weight-bold text-danger text-right">
                                {{ $transactions->count() }}x Peminjaman
                            </td>
                        </tr>
                    </tbody>
                </x-table>
            </x-card>
            <div class="d-flex justify-content-end">{{ $transactions->links() }}</div>
        </div>
    </x-container>
@endsection
