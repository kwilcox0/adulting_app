require 'rails_helper'

RSpec.describe Topic, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:videos) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
