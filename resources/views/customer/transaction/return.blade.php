@extends('layouts.master', ['title' => 'Pengembalian'])

@section('content')
    <x-container>
        <div class="col-12">
            <x-card title="DAFTAR PENGEMBALIAN" class="card-body p-0">
                <x-table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Invoice</th>
                            <th>Nama Komponen</th>
                            <th>Kategori Komponen</th>
                            <th>Kuantitas</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($transactions as $i => $transaction)
                            <tr>
                                <td>{{ $i + $transactions->firstItem() }}</td>
                                <td>{{ $transaction->id }}</td>
                                <td>
                                    @foreach ($transaction->details as $details)
                                        <li>{{ $details->product->name }}</li>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach ($transaction->details as $details)
                                        <li>{{ $details->product->category->name ?? '-' }}</li>
                                    @endforeach
                                </td>
                                <td>
                                    @foreach ($transaction->details as $details)
                                        <li>{{ $details->quantity }} {{ $details->product->unit }}</li>
                                    @endforeach
                                </td>
                                <td>
                                    @if($transaction->status == null)
                                        <form action="{{ route('customer.transaction.return.process', $transaction->id) }}" method="POST">
                                            @csrf
                                            <button type="submit" class="btn btn-sm btn-warning" onclick="return confirm('Yakin ingin mengembalikan barang ini?')">
                                                Kembalikan
                                            </button>
                                        </form>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </x-table>
            </x-card>
            <div class="d-flex justify-content-end">
                {{ $transactions->links() }}
            </div>
        </div>
    </x-container>
@endsection
