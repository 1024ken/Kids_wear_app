class Child < ApplicationRecord
    
    validates :name,  presence: true, length: { maximum: 30 }
    validates :birthday,  presence: true
    validates :sex,  presence: true
    validates :size,  presence: true
    
    
    
    
    has_many :color_children
    has_many :style_children
    has_many :parttern_children
    has_many :dislike_children
    
    
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments
    
    belongs_to :user
    
    ##### m:nアソシエーション#####
    # 中間テーブルを通じて、child_idが選択した〇〇idを取得
    has_many :colors, through: :color_children, source: :color
    has_many :styles, through: :style_children, source: :style
    has_many :partterns, through: :parttern_children, source: :parttern
    has_many :dislikes, through: :dislike_children, source: :dislike
    
    
    mount_uploader :image, ImageUploader
    
end
