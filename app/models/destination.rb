class Destination < ApplicationRecord
    has_many :posts 
    has_many :bloggers, through: :posts 

  # def last_posts
  #   Post.destination.each do |dest|
  #     dest == self
  #   end.last(5)
  # end


end
