class StaticPagesController < ApplicationController
  def index
    @events = Post.where(is_event: true).limit(2)
    @foods = Food.where(is_on_top_page: true).limit(6)
    @top_images = TopImage.limit(5)
  end

  def about
  end

  def contact
  end
end
