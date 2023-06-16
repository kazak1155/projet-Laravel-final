<?php

namespace Database\Seeders;

use App\Models\Facility_hotel;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FacilityHotelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Facility_hotel::factory(50)->create();
    }
}
