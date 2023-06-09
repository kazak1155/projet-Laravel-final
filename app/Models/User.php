<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    use HasFactory;

    public function roleUser()
    {
        return $this->belongsTo(Role_user::class);
    }

    public function booking()
    {
        return $this->hasMany(Booking::class);
    }
}
