<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class User extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'email_verified_at',
        'password',
        'remember_token',
    ];

    public function roleUser(): HasOne
    {
        return $this->hasOne(Role_user::class);
    }

    public function booking(): HasMany
    {
        return $this->hasMany(Booking::class);
    }

    public function review(): hasMany
    {
        return $this->hasMany(Review::class);
    }
}
