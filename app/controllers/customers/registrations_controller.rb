class Customers::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # アカウント情報一覧
  def edit
    @children = Child.where(customer_id: current_customer.id).order('created_at desc')
    super
  end



  def bulid_resource(hash=nil)
    hash[:uid] = Customer.create_unique_string
    super
  end
end
