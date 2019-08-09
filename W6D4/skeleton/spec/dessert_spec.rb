require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cake) {Dessert.new("cheesecake",10,"chef")}
  let(:chef) { double("chef") }
  let(:cheesecake) { double("cheesecake")}

  describe "#initialize" do
    it "sets a type"
      expect(cake.type).to eq "cheesecake"


      it "sets a quantity"
      expect (cake.quantity).to eq 10

    it "starts ingredients as an empty array"
      expect(cake.ingredients).to eq{expect(Array.empty?)
      

    it "raises an argument error when given a non-integer quantity"
      expect(raise).to eq ArgumentError
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
    expect{cake.add_ingredient(flour)}.to eq (cake.ingredients.include?(flour))
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
      expect(cake.mix!).to eq (ingredients.shuffle!)
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      cake.eat(1)
      expect cake.quantity.to eq 9

    it "raises an error if the amount is greater than the quantity"
      cake.eat(12)
      expect raise.to eq ArgumentError
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"

    expect cake.serve.to eq "Chef has made 10 cheesecakes!"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
    expect cake.make_more.to receive chef.bake(cake)
  end
end
