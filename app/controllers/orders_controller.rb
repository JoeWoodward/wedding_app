class OrdersController < ApplicationController
  def new
    @order = Order.new(type: 'food')
    @person = @order.people.new
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      redirect_to new_order_path, notice: 'Your order has been placed, if you need to change it please contact Sam or Jamie ASAP'
    else
      render :new
    end
  end
end
