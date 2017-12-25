class Color < ApplicationRecord
    
    has_many :color_children
    has_many :children, through: :color_children
end
