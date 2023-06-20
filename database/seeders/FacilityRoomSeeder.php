<?php

namespace Database\Seeders;

use App\Models\Facility_room;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FacilityRoomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Facility_room::factory(50)->create();
    }
}
