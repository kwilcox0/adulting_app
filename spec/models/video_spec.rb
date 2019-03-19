require 'rails_helper'

RSpec.describe Video, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:instructor) }

    it { should belong_to(:category) }

    it { should have_many(:ratings) }

    end

    describe "InDirect Associations" do

    it { should have_many(:users) }

    end

    describe "Validations" do
      
    end
end
