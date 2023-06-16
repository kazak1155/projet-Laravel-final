<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class Facility_room extends Pivot
{
    use HasFactory;

    protected $fillable = [
        'facility_id',
        'room_id'
    ];
}
