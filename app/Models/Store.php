<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Store extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name',
        'code',
        'address',
        'city',
        'phone',
        'pic_name',
        'bank_name',
        'bank_account',
        'bank_account_name',
        'is_active',
        'monthly_target_qty',
    ];

    protected function casts(): array
    {
        return ['is_active' => 'boolean'];
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'user_store')
            ->withPivot('is_primary')
            ->withTimestamps();
    }

    public function stocks()
    {
        return $this->morphMany(Stock::class, 'location');
    }

    public function targets()
    {
        return $this->hasMany(StoreTarget::class);
    }

    /**
     * Ambil target untuk bulan & tahun tertentu.
     * Jika tidak ada record khusus bulan itu, gunakan target default dari profil toko.
     */
    public function getTargetForMonth(int $month, int $year): int
    {
        $record = $this->targets()
            ->where('month', $month)
            ->where('year', $year)
            ->first();

        return $record ? $record->target_qty : $this->monthly_target_qty;
    }
}
