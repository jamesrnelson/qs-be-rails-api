require 'rails_helper'

describe 'delete request to /api/v1/foods/:id' do
  it 'should delete the specified record' do
    food1 = Food.create(name: 'Banana', calories: 150)
    food2 = Food.create(name: 'Apple', calories: 100)

    expected = [
      {
        'id': food1.id,
        'name': food1.name,
        'calories': food1.calories
      }
    ]

    delete "/api/v1/foods/#{food2.id}"

    expect(response.status).to eq(204)

    get '/api/v1/foods'

    food = JSON.parse(response.body, symbolize_names: true)

    expect(food).to eq(expected)
  end
end
