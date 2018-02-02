class Address < ApplicationRecord
    include JpPrefecture
    jp_prefecture :prefecture_code

    # ハイフンなし10桁or9桁
    validates :phone_code, presence: true, format: { with: /\A\d{10}$|^\d{11}\z/ }


    validates :post_code, presence: true, format: { with: /\A\d{3}\-?\d{4}\z/ }


    validates :prefecture_code, presence: true
    validates :city_code, presence: true
    validates :street_code, presence: true


    belongs_to :customer
end
