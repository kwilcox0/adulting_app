require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:ratings) }

    end

    describe "InDirect Associations" do

    it { should have_many(:videos) }

    end

    describe "Validations" do
      
    end
end
