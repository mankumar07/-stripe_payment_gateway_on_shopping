class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.all
  end

  def show
    @order = Order.find(params[:id])
    if @order.status == "paid"
      flash.now[:notice] = "Your Order is created successfuly and paid!."
    else
      flash.now[:notice] = "Your Order is created successfuly and but payment is failed!."
    end
  end

  def create
    byebug
    if intent.status == "succeeded"
      redirect_to product_url(@product), notice: "your payment is complete!."
    end
  end

  def update
  end
end
