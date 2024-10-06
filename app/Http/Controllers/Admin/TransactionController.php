<?php

namespace App\Http\Controllers\Admin;

use App\Models\Rent;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Models\TransactionDetail;
use App\Http\Controllers\Controller;

class TransactionController extends Controller
{
    public function product()
    {
        $transactions = Transaction::with('details.product')->latest()->paginate(10);

        $grandQuantity = TransactionDetail::sum('quantity');

        return view('admin.transaction.product', compact('transactions', 'grandQuantity'));
    }

    public function vehicle()
    {
        $rents = Rent::with('vehicle', 'user')->when(request()->q, function($search){
            $search = $search->whereHas('user', function($query){
                $query->where('name', 'like', '%'.request()->q.'%');
            })->orWhereHas('vehicle', function($query){
                $query->where('name', 'like', '%'.request()->q.'%');
            });
        })->latest()->paginate(10);

        return view('admin.transaction.vehicle', compact('rents'));
    }

    public function update(Request $request, $id)
    {
        $transaction = Transaction::with('details.product')->findOrFail($id);

        foreach ($transaction->details as $details) {
            $product = $details->product;
            $product->update([
                'quantity' => $product->quantity + $details->quantity,
            ]);
        }

        $transaction->updated_at = now();
        $transaction->save();

        return back()->with('toast_success', 'Produk berhasil dikembalikan dan stok diperbarui.');
    }

}
