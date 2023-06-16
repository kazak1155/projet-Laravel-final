<?php

namespace Database\Factories;

use App\Models\Hotel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Room>
 */
class RoomFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name,
            'description' => $this->faker->sentence(10),
            'poster_url' => $this->faker->text($maxNbChars = 90),
            'floor_area' =>$this->faker->numberBetween(0, 99),
            'type' => $this->faker->text($maxNbChars = 100),
            'price' => $this->faker->numberBetween(0, 100000),
            'hotel_id' => Hotel::inRandomOrder()->first()->getKey(),
        ];
    }
}
