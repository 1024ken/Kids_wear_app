class DislikeChild < ApplicationRecord
    belongs_to :child
    belongs_to :dislike
end
