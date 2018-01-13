class ChargesController < ApplicationController
    
    # ・Plan作成
    #     Checkoutでカード情報入力フォームを表示
    # 　　ユーザがカード情報を入力
    # 　　Stripeがトークンをサーバー側に返す
    # ・Customer作成
    #     上記で作成したトークンをCustomer.createの時にセットcreate
    # ・Subscription作成
    # 　　CustomerとPlanを紐づける
    def new
    end
    
    
    def create
        # Stripeのトークン
        token = params[:stripeToken]
        
        # @children = Child.find_by(user_id: current_user)
        @children = Child.find(params[:child_id])
        @children.paymented_on = true

        # Customer作成
        customer = Stripe::Customer.create(
            email: params[:email],
            
            source: token,
            )
            
        
        # customer_id = customer.id
            
        # Subscription作成    
        sample = Stripe::Subscription.create(
            customer: customer[:id],
            :items => [
                {
            plan: "basic-plan",
            },
          ],
        )  
    @children.stripe_id = sample[:id]
    @children.save
            
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
        redirect_to users_path(@children), notice: '支払いが完了しまひた'
    end
    
end
