class ProductsController < ApplicationController

  def index

  end

  def add
    cart = session[:cart] || []
    session[:cart] = cart
    cart << ok_params
    redirect_to root_path
  end

  private
    def ok_params
      params.require(:product)
    end


end
