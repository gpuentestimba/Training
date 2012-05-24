class StoreController < ApplicationController
  def index
    @products = Product.find(:all, :order => "price DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
end
