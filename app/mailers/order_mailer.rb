class OrderMailer < ApplicationMailer
  def notify_order_plcaed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email , subject: "[JDstore] 感謝您完成本次下單，以下是您這次購物明細 #{order.token}")
  end
end
