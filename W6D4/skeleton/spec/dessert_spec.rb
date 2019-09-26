require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) {Chef.new("chef")}
  subject(:cake) { Dessert.new("cake",10,chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to be_an(Integer)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to eq([])
    end
      

    it "raises an argument error when given a non-integer quantity" do 
      expect {Dessert.new("cake","10",:chef)}.to raise_error(ArgumentError)
    end
      
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("flour")
      expect(cake.ingredients).to eq(["flour"])
    end
  end
    

  describe "#mix!" do      
    it "shuffles the ingredient array" do
      cake.add_ingredient("flour")
      cake.add_ingredient("eggs")
      cake.add_ingredient("milk")
      list = cake.ingredients.dup.join(" ")
      cake.mix!
      in_bowl = cake.ingredients.join(" ")
      expect(list).not_to eql(in_bowl)  
    end
  end

  describe "#eat" do

    it "subtracts an amount from the quantity"do
      cake.eat(1)
      expect(cake.quantity).to eq(9)
    end
  
    

    it "raises an error if the amount is greater than the quantity" do
      expect{cake.eat(11)}.to raise_error("not enough left!")
    end
      
      
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cake.serve).to include("Chef")      
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:bake).with(cake)
      cake.make_more
    end
    
  end
end
