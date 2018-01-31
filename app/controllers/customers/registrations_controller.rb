class Customers::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # アカウント情報一覧
  def edit
    # binding.pry
    @children = Child.where(customer_id: current_customer.id)
    super
  end

  # def new
  #   @customer = Customer.new
  # end
  #
  #
  # def destroy
  #   @children = Child.find(params[:id])
  #   @children.destroy
  #   redirect_to edit_customer_registration_path
  # end
end
