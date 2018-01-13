class Comment < ApplicationRecord
  belongs_to :child, optional: true
end
