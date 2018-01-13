class Dislike < ApplicationRecord
    has_many :dislike_children
    has_many :children, through: :dislike_children
end
