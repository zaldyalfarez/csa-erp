<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StoreTarget extends Model
{
    protected $fillable = ['store_id', 'month', 'year', 'target_qty'];

    public function store()
    {
        return $this->belongsTo(Store::class);
    }
}
