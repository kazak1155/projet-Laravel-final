<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Review extends Model
{
    use HasFactory;

    protected $fillable = [
        'text',
        'grade',
        'hotel_id',
        'user_id'
    ];

    public function user(): HasOne
    {
        return $this->hasOne(User::class);
    }

    public function hotel(): HasOne
    {
        return $this->hasOne(Hotel::class);
    }
}
