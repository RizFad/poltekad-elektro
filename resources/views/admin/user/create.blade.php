@extends('layouts.master', ['title' => 'User'])

@section('content')
    <x-container>
        <div class="row">
            <div class="col-12">
                <x-card title="TAMBAH USER" class="card-body">
                    <form action="{{ route('admin.user.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <x-input 
                            title="Nama User" 
                            name="name" 
                            type="text" 
                            placeholder="Nama User" 
                            :value="old('name')" 
                        />
                        <x-select 
                            title="Departemen" 
                            name="department" 
                            class="form-select @error('department') is-invalid @enderror"
                        >
                            <option value="" selected>Silahkan Pilih</option>
                            <option value="Umum">Umum</option>
                            <option value="Mahasiswa">Mahasiswa</option>
                            <option value="Kepala Jurusan">Kepala Jurusan</option>
                            <option value="Kepala Program Studi">Kepala Program Studi</option>
                            @error('department')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </x-select>
                        <x-input 
                            title="Email User" 
                            name="email" 
                            type="text" 
                            placeholder="Email User" 
                            :value="old('email')" 
                        />
                        <x-input 
                            title="Password User" 
                            name="password" 
                            type="password" 
                            placeholder="Password User" 
                        />
                        <x-input 
                            title="Konfirmasi Password User" 
                            name="password_confirmation" 
                            type="password" 
                            placeholder="Konfirmasi Password User" 
                        />
                        <x-button-save 
                            title="Simpan" 
                            icon="save" 
                            class="btn btn-primary" 
                        />
                        <x-button-link 
                            title="Kembali" 
                            icon="arrow-left" 
                            :url="route('admin.product.index')" 
                            class="btn btn-dark"
                            style="mr-1" 
                        />
                    </form>
                </x-card>
            </div>
        </div>
    </x-container>
@endsection
