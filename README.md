## Inventory Management System
Aplikasi Web penyimpanan barang untuk laboratorium elektronika POLTEKAD, menggunakan framework laravel. <br><br>
Latar belakang pembuatan aplikasi ini untuk melakukan sebuah transaksi permintaan, peminjaman dan juga pengambilan barang harus melakukan pengecekan barang di laboratorium elektronika terlebih dahulu yang dimana terletak pada lantai 1 sedangkan user mayoritas berada pada kelas perkuliahan dan juga barang yang di lab tidak di data secara mendetail oleh pengelola kepala laboratorium tersebut, sehingga untuk melakukan transaksi bisa memakan waktu yang cukup lama, oleh karena itu saya membangun sebuah aplikasi yang diharapkan mampu mempercepat dan mempermudah transaksi dan pengelolaan barang.

[Imgur](https://imgur.com/41Dg6Dy)

## Cara Instalasi Project

Pastikan git cli sudah terinstall, kemudian jalankan perintah dibawah
```
1. clone repository
2. copy .env.example rename menjadi .env kemudian atur database di .env
3. composer install
4. php artisan key:generate
5. php artisan migrate --seed
```

## Akun Super Admin
```
email : admin@gmail.com
password : password
```

## Fitur Aplikasi 
- Terdapat 3 role yaitu : super admin, admin, dan customer
- Mengelola Kategori (Super Admin & Admin)
- Mengelola Supplier (Super Admin & Admin)
- Mengelola Komponen (Super Admin & Admin)
- Mengelola User (Super Admin & Admin)
- Mengelola Transaksi (Super Admin & Admin)
- Mengelola Roles & Permission (Super Admin)
- Halaman Dashboard dengan berbagai fitur seperti : (Super Admin & Admin) 
   - Komponen paling populer
   - Notifikasi permintaan barang yang belum di verifikasi
   - List barang dengan stok kurang dari 10
   - Jumlah Kategori
   - Jumlah Supplier
   - Jumlah Komponen
   - Jumlah Kendaraan
   - Jumlah Customer
   - Jumlah Permintaan Komponen
   - Jumlah Komponen Keluar
   - Jumlah Komponen Keluar Bulan Ini
- Permintaan Komponen (All Role)
- Peminjaman Kendaraan (All Role)
- Pengembalian Kendaraan (All Role)
- Keranjang (All Role)
- Mengubah Akun (All Role)
- List Transaksi (All Role)
- Search Data
- Responsive

## License
Aplikasi ini bersifat open source dapat digunakan oleh siapa pun dengan syarat tidak untuk di perjual belikan.
