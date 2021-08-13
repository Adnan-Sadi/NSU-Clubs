<?php

namespace Database\Factories;

use App\Models\Members;
use Illuminate\Database\Eloquent\Factories\Factory;

class MembersFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Members::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
        'club_id' => $this->faker->numberBetween(1,9),
        'dept_id' => $this->faker->numberBetween(1,16),
        'name' => $this->faker->name(),
        'nsu_id'=> $this->faker->numberBetween(1500000000,2100000000),
        'email' => $this->faker->email(),
        'phone_num' =>$this->faker->e164PhoneNumber(),
        'position' => $this->faker->randomElement(array('General Member','Senior Member','Probationary Member','Vice President','Treasurer','President')),
        'join_date' => $this->faker->date($format = 'Y-m-d', $max = 'now')
        ];
    }
}
