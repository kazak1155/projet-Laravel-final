<?php

namespace Database\Factories;

use App\Models\Facility;
use App\Models\Room;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Facility_room>
 */
class Facility_roomFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'facility_id' => Facility::inRandomOrder()->first()->getKey(),
            'room_id' => Room::inRandomOrder()->first()->getKey(),
        ];
    }
}
