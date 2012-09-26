class Spree::Admin::SuperadminController < Spree::Admin::BaseController
  before_filter :load_order
  respond_to :html

  def complete_payment
    if params[:transaction_id].present?
      # update the last one b/c that's what the order checks to see if
      # the payment has been completed (wtf?)
      @order.payments.last.response_code = params[:transaction_id]
      @order.payments.last.complete!
      flash[:notice] = 'Order completed!'
    else
      flash[:error] = 'Transaction ID required!'
    end
    redirect_to action: :index
  end

  protected
    def load_order
      @order = Spree::Order.where(number: params[:order_number]).first!
    end
end
