<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(UserSeeder::class);
        $this->call(HotelSeeder::class);
        $this->call(FacilitySeeder::class);
        $this->call(RoleUserSeeder::class);
        $this->call(ReviewSeeder::class);
        $this->call(RoomSeeder::class);
        $this->call(FacilityHotelSeeder::class);
        $this->call(FacilityRoomSeeder::class);
        $this->call(BookingSeeder::class);
    }
}
