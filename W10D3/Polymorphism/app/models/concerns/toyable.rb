module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable

    validates :name, uniqueness: { scope: [:toyable] }

  end

  def receive_toy(name)
    toy = Toy.find_by(name: name) || Toy.create(name: name)  

    self.toys = [toy]

  end
end