@extends('layouts.master', ['title' => 'Komponen'])

@section('content')
    <x-container>
        <div class="col-12">
            @can('create-product')
                <x-button-link title="Tambah Komponen" icon="plus" class="btn btn-primary mb-3" style="mr-1" :url="route('admin.product.create')" />
                <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#importModal">
                    Import Komponen
                </button>
            @endcan
            <x-card title="DAFTAR KOMPONEN" class="card-body p-0">
                <x-table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Foto</th>
                            <th>Nama Komponen</th>
                            <th>Kategori Komponen</th>
                            <th>Satuan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($products as $i => $product)
                            <tr>
                                <td>{{ $i + $products->firstItem() }}</td>
                                <td>
                                    <span class="avatar rounded avatar-md"
                                        style="background-image: url('{{ $product->image }}')"></span>
                                </td>
                                <td>{{ $product->name }}</td>
                                <td>{{ $product->category->name }}</td>
                                <td>{{ $product->unit }}</td>
                                <td>
                                    @can('update-product')
                                        <x-button-link title="" icon="edit" class="btn btn-info btn-sm"
                                            :url="route('admin.product.edit', $product->id)" style="" />
                                    @endcan
                                    @can('delete-product')
                                        <x-button-delete :id="$product->id" :url="route('admin.product.destroy', $product->id)" title=""
                                            class="btn btn-danger btn-sm" />
                                    @endcan
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

    <div class="modal fade" id="importModal" tabindex="-1" aria-labelledby="importModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="{{ route('admin.product.import') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title" id="importModalLabel">Import Komponen</h5>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="file" class="form-label">Pilih file Excel</label>
                            <input type="file" name="file" class="form-control" id="file" required>
                        </div>
                        <a href="{{ route('admin.product.downloadTemplate') }}" class="btn btn-success">
                            Download Template
                        </a>
                    </div>
                    <div class="modal-footer">
                        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button> -->
                        <button type="submit" class="btn btn-primary">Upload</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var importModal = document.getElementById('importModal');
            var importButton = document.querySelector('[data-bs-target="#importModal"]');

            if (importButton && importModal) {
                importButton.addEventListener('click', function () {
                    var bootstrapModal = new bootstrap.Modal(importModal);
                    bootstrapModal.show();
                });
            }
        });
    </script>

@endsection
