class AddressesController < ApplicationController
  
  # new→confirm→create
  
  def new
    if params[:back]
      # 戻るボタンに押下時、parametersにname属性"back"があった場合、初期化せず、form戻るのparametersを追加する
      @addresses = Address.new(address_params)
    else
      @addresses = Address.new
    end
  end  
  
  def create
    @addresses = Address.create(address_params)
    if @addresses.save
      redirect_to new_charge_path
    else  
      render "new"
    end
  end
  
  
  def confirm
    # ユーザ情報画面（new)で入力された値（parameters）を取得。
    @addresses = Address.new(address_params)
    render :new if @addresses.invalid?
    # binding.pry
  end  
  
  
  
  
  private
        def address_params
            params.require(:address).permit(:name, :kana, :email, :phone, :post_code, :prefecture, :city, :street, :building)
        end
end
 
