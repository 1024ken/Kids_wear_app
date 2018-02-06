class Customer < ApplicationRecord
  # Deviseに紐づいたモデル
  # 今回はUserモデルを一度作成しているので、Customerモデルという名を指定した
  validates :name,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 20 },
            format: { with: /\A[a-z0-9]+\z/, message: "は半角英数字で入力してください"}
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
            before_save { email.downcase! }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable, :confirmable,
         :omniauthable, omniauth_providers: %i(google)



  # 属性を付与し、nameでもログイン等の認証キー
  attr_accessor :login
  def login
    @login || name || email
  end

  def validate_name
    errors.add(:name, :invalid) if Customer.where(email: name).exists?
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    conditions[:email]&.downcase!
    login = conditions.delete(:login)
    where(conditions.to_hash).where(
      ['lower(name) = :value OR lower(email) = :value',
       { value: login.downcase }]
    ).first
  end

  def self.create_unique_string
    SecureRandom.uuid
  end
  # 外部から取得したカスタマー情報を元に、本アプリ用のカスマターのインスタンスを生成
  def self.find_for_google(auth)
  customer = Customer.find_by(email: auth.info.email)

    unless customer
      customer = Customer.new(email: auth.info.email,
                      provider: auth.provider,
                      uid:      auth.uid,
                      password: Devise.friendly_token[0, 20],
                                   )
    end
    customer.save
    customer
  end


   has_many :children
   has_many :addresses
   mount_uploader :image, ImageUploader

end
