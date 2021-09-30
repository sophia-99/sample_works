<?php

namespace Database\Factories;

use App\Models\Organization;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrganizationFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Organization::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=> $this->faker->company(),
            'type'=> $this->faker->randomElement(["NGOs", "Police", "UNICEF"]),
            'contact'=> $this->faker->phoneNumber(),
            'address'=> $this->faker->address(),
            'latitude'=> $this->faker->latitude(),
            'longitude'=> $this->faker->longitude(),

            //
        ];
    }
}
