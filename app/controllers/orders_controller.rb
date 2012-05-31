class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @order = Order.new(type: 'food')
    @person = @order.people.new
  end

  def edit
  end

  def create
  end

  def destroy
  end
end
