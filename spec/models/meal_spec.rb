require 'rails_helper'

describe Meal do
  describe 'Relationships' do
    it { should have_many(:meal_foods) }
    it { should have_many(:foods) }
  end
end
