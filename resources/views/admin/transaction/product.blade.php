@extends('layouts.master', ['title' => 'Komponen Keluar'])

@section('content')
    <x-container>
        <div class="col-12">
            <x-card title="DAFTAR KOMPONEN KELUAR" class="card-body p-0">
                <x-table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nama Peminjam</th>
                            <th>Nama Komponen</th>
                            <th>Kategori Komponen</th>
                            <th>Tanggal Peminjaman</th>
                            <th>Tanggal Pengembalian</th>
                            <th>Kuantitas</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $totalQuantity = 0;
                        @endphp
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
                                <td>{{ $transaction->created_at }}</td>
                                <td>
                                    @if ($transaction->created_at != $transaction->updated_at)
                                        {{ $transaction->updated_at }}
                                    @endif
                                </td>
                                <td>
                                    @if ($transaction->created_at == $transaction->updated_at)
                                        @foreach ($transaction->details as $details)
                                            <li>{{ $details->quantity }} - {{ $details->product->unit }}</li>
                                            @php
                                                $totalQuantity += $details->quantity; // Tambah quantity ke total
                                            @endphp
                                        @endforeach
                                    @endif
                                </td>
                                <td>
                                    @if ($transaction->created_at == $transaction->updated_at)
                                        <form action="{{ route('admin.transaction.update', $transaction->id) }}" method="POST" onsubmit="return confirm('Apakah Anda yakin ingin mengembalikan produk?');">
                                            @csrf
                                            @method('PUT')
                                            <button type="submit" class="btn btn-success">
                                                <i class="fas fa-check"></i>
                                                <span class="ml-2">Pengembalian</span>
                                            </button>
                                        </form>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                        <tr>
                            <td colspan="6" class="font-weight-bold text-uppercase">
                                Total Komponen Keluar
                            </td>
                            <td class="font-weight-bold text-danger text-right">
                                {{ $totalQuantity }} Komponen
                            </td>
                        </tr>
                    </tbody>
                </x-table>
            </x-card>
            <div class="d-flex justify-content-end">{{ $transactions->links() }}</div>
        </div>
    </x-container>
@endsection
