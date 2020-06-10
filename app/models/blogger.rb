class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts 
    validates :name, uniqueness: :true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: { minimum: 30 }


    def counts
        count = 0
        Post.all.each do |post|
            if post.blogger_id == self
                count += post.likes
            end
        end
        count 
    end

    def max_likes
        Post.all.max_by do |post|
            post.likes
        end
    end

end