<?php

namespace App\Imports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Collection;

class ProductImport implements ToCollection, WithHeadingRow
{
    public function collection(Collection $rows)
    {
        foreach ($rows as $row) {
            $validatedRequest = [
                'name' => $row['nama'] ?? null,
                'category_id' => $row['category_id'] ?? null,
                'unit' => $row['jumlah'] ?? null,
                'supplier_id' => $row['supplier_id'] ?? null,
                'description' => $row['deskripsi'] ?? null,
                'image' => $row['gambar'] ?? "w0dOwBu3IH01tXfAqAlwNlUWp3BGALIE5KBBF7Vv.jpg",
            ];

            Product::create($validatedRequest);
        }
    }
}
