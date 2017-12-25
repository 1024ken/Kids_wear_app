class Address < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 30 }
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    before_save { email.downcase! }
    validates :phone, presence: true, format: { with: /\A[0-9]+\z/ }
    validates :prefecture, presence: true
end


