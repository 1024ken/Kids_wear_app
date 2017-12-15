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
        token = params[:stripeToken]
        # Customer作成
        customer = Stripe::Customer.create(
            email: params[:email],
            
            source: token,
            )
            
        # Subscription作成    
        Stripe::Subscription.create(
            customer: customer[:id],
            :items => [
                {
            plan: "basic-plan",
    },
  ],
)  
            
    rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    end
end
