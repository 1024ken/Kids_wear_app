class Customers::RegistrationsController < Devise::RegistrationsController

  def edit
    @children = Child.where(customer_id: current_customer.id).order('created_at desc')
    super
  end

  def bulid_resource(hash=nil)
    hash[:uid] = Customer.create_unique_string
    super
  end
end
