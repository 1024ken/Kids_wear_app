class ChargesController < ApplicationController


  def new
  end

  def create
    token = params[:stripeToken]
    if params[:child_id].blank?
      @children = current_customer.children.last
      @children.paymented_on = true
    else
      @children = Child.find(params[:child_id])
      @children.paymented_on = true
    end

    customer = Stripe::Customer.create(
      email: params[:email],
      source: token,
    )

    sample = Stripe::Subscription.create(
      customer: customer[:id],
      items: [
          {
      plan: "basic-plan",
      },
    ],
  )
    @children.stripe_id = sample[:id]
    @children.save
    render 'create'
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end

  def destroy
    @children = Child.find(params[:child_id])
    subscription = Stripe::Subscription.retrieve(@children.stripe_id)
    subscription.delete
    @children.stripe_id=""
    @children.paymented_on = false
    @children.save
    redirect_to users_path(@children), notice: '支払いが完了しました'
  end
end
