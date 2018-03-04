class Style < ApplicationRecord
  has_many :style_children
  has_many :children, through: :style_children
end
