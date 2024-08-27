@extends('layouts.master', ['title' => 'Komponen'])

@section('content')
    <x-container>
        <div class="row">
            <div class="col-12">
                <x-card title="TAMBAH KOMPONEN" class="card-body">
                    <form action="{{ route('admin.product.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <x-input name="name" type="text" title="Nama Komponen" placeholder="Nama Komponen" :value="old('name')" />
                        <x-input name="unit" type="text" title="Satuan Komponen" placeholder="Satuan Komponen"
                            :value="old('unit')" />
                        <!-- <x-select title="Supplier Komponen" name="supplier_id">
                            <option value>Silahkan Pilih</option>
                            @foreach ($suppliers as $supplier)
                                <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
                            @endforeach
                        </x-select> -->
                        <x-select title="Kategori Komponen" name="category_id">
                            <option value>Silahkan Pilih</option>
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                            @endforeach
                        </x-select>
                        <x-input name="image" type="file" title="Foto Komponen" placeholder="" :value="old('image')" />
                        <x-textarea name="description" title="Deskripsi Komponen" placeholder="Deskripsi Komponen"></x-textarea>
                        <x-button-save title="Simpan" icon="save" class="btn btn-primary" />
                        <x-button-link title="Kembali" icon="arrow-left" :url="route('admin.product.index')" class="btn btn-dark"
                            style="mr-1" />
                    </form>
                </x-card>
            </div>
        </div>
    </x-container>
@endsection
