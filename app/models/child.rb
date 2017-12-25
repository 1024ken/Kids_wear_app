class Child < ApplicationRecord
    
    has_many :color_children
    
    ##### m:nアソシエーション#####
    # 中間テーブル（color_children)を通じて、child_idが選択したcolor_idを取得
    has_many :colors, through: :color_children, source: :color
end
