require 'rails_helper'

describe Food do
  describe 'Attributes' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:calories) }
  end
end
