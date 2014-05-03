class StaticPagesController < ApplicationController
  def index
    @events = Post.where(is_event: true).limit(2)
    @foods = Food.where(is_on_top_page: true).limit(6)
    @top_images = TopImage.limit(5)

    @about_title = PagesText.find_by(identifier: 'about_short_title')
    @about_content = PagesText.find_by(identifier: 'about_short_content')
  end

  def about
    @about_title = PagesText.find_by(identifier: 'about_title')
    @about_content = PagesText.find_by(identifier: 'about_content')
  end

  def contact
  end
end
