<?php

namespace Database\Factories;

use App\Models\Room;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Booking>
 */
class BookingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'room_id' => Room::inRandomOrder()->first()->getKey(),
            'user_id' => User::inRandomOrder()->first()->getKey(),
            'started_at' => $this->faker->dateTimeThisMonth->format('Y-m-d H:i:s'),
            'finished_at' => $this->faker->dateTimeThisMonth->format('Y-m-d H:i:s'),
            'days' => $this->faker->randomDigitNotNull(),
            'price' => $this->faker->numberBetween(0, 100000)
        ];
    }
}
