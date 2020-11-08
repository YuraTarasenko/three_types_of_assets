class OrderMailer < ApplicationMailer
  def new_order_email
    @order = params

    mail(to: "#{ params[:email]}, #{params[:order].manager.email}", subject: "You got a new order!")
  end
end
