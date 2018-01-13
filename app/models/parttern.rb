class Parttern < ApplicationRecord
    has_many :parttern_children
    has_many :children, through: :parttern_children
end
