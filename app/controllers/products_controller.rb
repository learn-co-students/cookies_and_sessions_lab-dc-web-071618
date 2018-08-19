class ProductsController < ApplicationController 
    def index
        #  binding.pry
    end

    def add
       
        cart << params[:product]
        #  binding.pry
        render :index
    end
end