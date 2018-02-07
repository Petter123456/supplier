class ConfirmationMailer < ApplicationMailer
  default from: "wyncodeemailer@gmail.com"

    def confirmation_email(user) #user from controller
      @user = user
      @contract = Contract.last
      mail(to: @user.email, subject: 'Order Confirmation')
    end

    def confirmation_email_supplier(supplier) #user from controller
      @supplier = supplier
      @contract = Contract.last
      mail(to: @supplier.email, subject: 'Order Confirmation')
    end

    def admin_order_confirmation (admin)
      @admin = admin
      @contract = Contract.last
      mail(to: @admin, subject: 'Order Confirmation')
    end
    #
    # def admin_order_confirmation (admin)
    #   @admin = admin
    #   mail(to: 'petter.fagerlund@gmail.com', subject: 'Sample Email')
    # end

end
