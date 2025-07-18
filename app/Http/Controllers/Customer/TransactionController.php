<?php

namespace App\Http\Controllers\Customer;

use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Models\TransactionDetail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use Carbon\Carbon;

class TransactionController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        $user = Auth::id();

        $transactions = Transaction::with('details.product')->where('user_id', $user)->latest()->paginate(10);

        // $grandQuantity = TransactionDetail::sum('quantity');

        // $transactions = TransactionDetail::with('product', 'transaction')->whereHas('transaction', function($query) use($user){
        //     $query->where('user_id', $user);
        // })->paginate(10);

        $grandTransaction = Transaction::with('details.product')->where('user_id', $user)->count();

        $grandQuantity = TransactionDetail::with('transaction', 'product')->whereHas('transaction', function($query) use($user){
            $query->where('user_id', $user);
        })->sum('quantity');

        return view('customer.transaction.index', compact('transactions', 'grandTransaction', 'grandQuantity'));
    }

    public function returnList()
    {
        $userId = Auth::id();

        // Ambil semua transaksi milik user yang sudah memiliki detail dan produk
        $transactions = Transaction::with('details.product')
            ->where('user_id', $userId)
            ->latest()
            ->paginate(10);

        return view('customer.transaction.return', compact('transactions'));
    }

    public function returnTransaction(Transaction $transaction)
    {
        // Validasi apakah transaksi milik user
        if ($transaction->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');
        }

        DB::beginTransaction();

        try {
            foreach ($transaction->details as $detail) {
                $product = $detail->product;

                // Tambahkan kembali quantity ke stok produk
                $product->quantity += $detail->quantity;
                $product->save();
            }

            $transaction->updated_at = Carbon::now('Asia/Jakarta');
            $transaction->status = 'returned'; 
            $transaction->save();

            DB::commit();

            return back()->with('success', 'Transaksi berhasil dikembalikan dan stok diperbarui.');
        } catch (\Exception $e) {
            DB::rollback();
            return back()->with('error', 'Gagal mengembalikan transaksi. ' . $e->getMessage());
        }
    }
}
