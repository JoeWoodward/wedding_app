class StaticPagesController < ApplicationController
  def home
    @order = Order.new(type: 'food')
    @person = @order.people.new
  end
end
