<?php

namespace Database\Factories;

use App\Models\Hotel;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Review>
 */
class ReviewFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'text' => $this->faker->sentence(10),
            'grade' => $this->faker->randomDigitNotNull(),
            'hotel_id' => Hotel::inRandomOrder()->first()->getKey(),
            'user_id' => User::inRandomOrder()->first()->getKey(),
        ];
    }
}
