class Customer < ApplicationRecord
  # Deviseに紐づいたモデル
  # 今回はUserモデルを一度作成しているので、Customerモデルという名を指定した
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable
end
