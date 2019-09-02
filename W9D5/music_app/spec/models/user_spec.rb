require 'rails_helper'

RSpec.describe User, type: :model do

  # Validations

  describe "validation" do 
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password)
          .is_at_least(10)
          .on (:create)  }

  end

  describe "associations" do
    
  end


  describe "class methods" do
  end


  pending "add some examples to (or delete) #{__FILE__}"
end
