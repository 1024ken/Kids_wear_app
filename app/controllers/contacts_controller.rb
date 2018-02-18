class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]




  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      # 入力内容に問題がなければ、問い合わせ確認画面を表示
      render action: 'confirm'
    else
      # 入力内容に問題があれば、問い合わせ画面を再描画
      render action: 'new'
    end
  end


  # 問い合わせをDBに保存
  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        # メーラー呼び出し
        ContactMailer.contact_mail(@contact).deliver
        render action: "create"
      else
        render :new
      end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
