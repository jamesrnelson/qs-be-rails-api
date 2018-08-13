require 'rails_helper'

describe 'patch request to /api/v1/foods/:id' do
  it 'should be able to patch' do
    food1 = Food.create(name: 'Milkshake', calories: 875)
    new_calories = 25

    expected1 = {
      'id': food1.id,
      'name': food1.name,
      'calories': food1.calories
    }

    get "/api/v1/foods/#{food1.id}"

    expect(response).to be_success
    food = JSON.parse(response.body, symbolize_names: true)

    expect(food).to eq(expected1)

    patch "/api/v1/foods/#{food1.id}", params: { food: { name: food1.name, calories: new_calories } }

    expected2 = {
      'id': food1.id,
      'name': food1.name,
      'calories': new_calories
    }

    expect(response).to be_success
    updated_food = JSON.parse(response.body, symbolize_names: true)
    expect(updated_food).to eq(expected2)
  end
end
