class Customer < ApplicationRecord
  has_many :children
  has_many :addresses
  mount_uploader :image, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable, :confirmable,
         :omniauthable, omniauth_providers: %i(google)

  def self.create_unique_string
    SecureRandom.uuid
  end

  def self.find_for_google(auth)
    customer = Customer.find_by(email: auth.info.email)
    unless customer
      customer = Customer.new(email: auth.info.email,
        provider: auth.provider,
        uid:      auth.uid,
        password: Devise.friendly_token[0, 20],
      )
    end
    customer.skip_confirmation!
    customer.save
    customer
 end
end
