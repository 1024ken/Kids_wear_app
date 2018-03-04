class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    render :new if @contact.invalid?
  end

  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        ContactMailer.contact_mail(@contact).deliver
        render :create
      else
        render :new
      end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
