<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class Facility_hotel extends Pivot
{
    use HasFactory;

    protected $fillable = [
        'facility_id',
        'hotel_id'
    ];
}
