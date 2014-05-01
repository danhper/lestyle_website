class MenuController < ApplicationController
  def show
    @categories = Category.all
    @foods = Food.all
  end
end
