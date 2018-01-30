class AddressesController < ApplicationController

  # new→confirm→create

  def new
      @addresses = Address.new
  end

  def confirm
    # ユーザ情報画面（new)で入力された値（parameters）を取得し、user_idをぶち込む。
    @addresses = current_user.addresses.build(address_params)
    @change_prefecture_code = JpPrefecture::Prefecture.find(@addresses.prefecture_code)

    # バリデーションが通過すればtrue,引っかかればfalseを返す。
    render :new if @addresses.invalid?
  end


  def create
    @addresses = current_user.addresses.build(address_params)
      if @addresses.save
        redirect_to new_charge_path
      else
        render "new"
      end
  end





  #アカウント変更（住所等）
  def edit
    @addresses = Address.find_by(user_id: current_user.id)
  end


  def update
    @addresses = Address.find_by(user_id: current_user.id)
    if @addresses.update(address_params)
      redirect_to root_path, flash: {notice: '更新が完了しました'}
    else
      flash.now[:alert] = "更新が失敗しました"
      render "edit"
    end
  end

  private
        def address_params
            params.require(:address).permit(:name, :kana, :email, :phone_code, :post_code, :prefecture_code, :city_code, :street_code, :building_code, :user_id)
        end
end
