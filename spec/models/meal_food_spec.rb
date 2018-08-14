require 'rails_helper'

describe MealFood do
  describe 'Relationships' do
    it { should belong_to(:food) }
    it { should belong_to(:meal) }
  end
end
