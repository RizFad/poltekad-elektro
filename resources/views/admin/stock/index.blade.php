@extends('layouts.master', ['title' => 'Stok'])

@section('content')
    <x-container>
        <div class="col-12">
            <x-card title="DAFTAR KOMPONEN" class="card-body p-0">
                <x-table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Foto</th>
                            <th>Nama Komponen</th>
                            <!-- <th>Nama Supplier</th> -->
                            <th>Kategori Komponen</th>
                            <th>Satuan</th>
                            <th>Stok</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($products as $i => $product)
                            <tr>
                                <td>{{ $i + $products->firstItem() }}</td>
                                <td>
                                    <span class="avatar rounded avatar-md"
                                        style="background-image: url({{ $product->image }})"></span>
                                </td>
                                <td>{{ $product->name }}</td>
                                <!-- <td>{{ $product->supplier->name }}</td> -->
                                <td>{{ $product->category->name }}</td>
                                <td>{{ $product->unit }}</td>
                                <td>{{ $product->quantity }}</td>
                                <td>
                                    <x-button-modal :id="$product->id" icon="plus" style="mr-1" title="Stok"
                                        class="btn bg-teal btn-sm text-white" />
                                    <x-modal :id="$product->id" title="Tambah Komponen yang Tersedia - {{ $product->name }}">
                                        <form action="{{ route('admin.stock.update', $product->id) }}" method="POST"
                                            enctype="multipart/form-data">
                                            @csrf
                                            @method('PUT')
                                            <x-input title="Komponen yang Tersedia" name="quantity" type="text"
                                                placeholder="Komponen yang Tersedia" :value="$product->quantity" />
                                            <x-button-save title="Simpan" icon="save" class="btn btn-primary" />
                                        </form>
                                    </x-modal>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </x-table>
                <div class="d-flex justify-content-center">
                    {{ $products->links() }}
                </div>
            </x-card>
        </div>
    </x-container>
@endsection
