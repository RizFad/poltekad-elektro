@extends('layouts.master', ['title' => 'Komponen'])

@section('content')
    <x-container>
        <div class="row">
            <div class="col-12">
                <x-card title="UBAH KOMPONEN" class="card-body">
                    <form action="{{ route('admin.product.update', $product->id) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <x-input name="name" type="text" title="Nama Komponen" placeholder="Nama Komponen" :value="$product->name" />
                        <div class="row">
                            <div class="col-6">
                                <x-select title="Kategori Komponen" name="category_id">
                                    <option value="">Silahkan Pilih</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}" @selected($product->category_id == $category->id)>
                                            {{ $category->name }}</option>
                                    @endforeach
                                </x-select>
                            </div>
                            <input type="hidden" name="supplier_id" value="1">
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <x-input name="image" type="file" title="Foto Komponen" placeholder="" :value="$product->image" />
                            </div>
                            <div class="col-6">
                                <x-input name="unit" type="text" title="Satuan Komponen" placeholder="Satuan Komponen"
                                    :value="$product->unit" />
                            </div>
                        </div>
                        <x-textarea name="description" title="Deskripsi Komponen" placeholder="Deskripsi Komponen">
                            {{ $product->description }}</x-textarea>
                        <x-button-save title="Simpan" icon="save" class="btn btn-primary" />
                        <x-button-link title="Kembali" icon="arrow-left" :url="route('admin.product.index')" class="btn btn-dark"
                            style="mr-1" />
                    </form>
                </x-card>
            </div>
        </div>
    </x-container>
@endsection
