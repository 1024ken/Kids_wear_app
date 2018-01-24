class ContactMailer < ApplicationMailer
    
    
    # ＠contactをcontactと言う引数で受け取る
    def contact_mail(contact)
        
        # Viewに渡すため
        @contact = contact
        
        
        mail to: @contact.email, subject: "お問い合わせの確認メール"
    end    
end
