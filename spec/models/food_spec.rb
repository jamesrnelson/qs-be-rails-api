require 'rails_helper'

describe Food do
  it 'Attributes' do
    food1 = Food.create(name: 'Banana', calories: 150)

    expect(food1.name).to eq('Banana')
    expect(food1.calories).to eq(150)
  end

  it 'can show an individual food' do
    food1 = Food.create(name: 'Steak', calories: 600)
    id = food1.id

    get "/api/v1/foods/#{id}"
    expect(response).to be_success
    food = JSON.parse(response.body)

    expect(food['id']).to eq(id)
    expect(food['name']).to eq(food1.name)
    expect(food['calories']).to eq(food1.calories)
  end
end
