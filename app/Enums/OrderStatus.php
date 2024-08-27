<?php

namespace App\Enums;

enum OrderStatus : string {
    case Pending  = 'Menunggu Konfirmasi';
    case Verified = 'Permintaan Diterima';
    case Success  = 'Komponen Telah Tersedia';
    case Done     = 'Permintaan Selesai';
}
