class StoreController < ApplicationController

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end

  def index
    @count = increment_counter
    @products = Product.all
  end
end
