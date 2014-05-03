class StaticPagesController < ApplicationController
  def index
    @events = Post.where(is_event: true).limit(true)
  end

  def about
  end

  def contact
  end
end
