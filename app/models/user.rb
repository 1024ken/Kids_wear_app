class User < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 30 }
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
                
    before_save { email.downcase! }
    
    
    # パスワードのバリデーションについて
    # セキュアにハッシュ化したパスワードを、データベース内のpassword_digestというカラムに保存する
    has_secure_password
    # createアクション実行時のみバリデーションが実行される
    validates :password, presence: true, length: { minimum:6 }, on: :create
    
    
    has_many :children
    
    has_many :addresses
    
    mount_uploader :image, ImageUploader
    
end
