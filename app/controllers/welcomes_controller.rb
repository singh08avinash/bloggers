class WelcomesController < ApplicationController
  def index
  	@all_events = Event.all
  	@all_images = Image.all
  	@all_blog_titles = BlogsTitle.all
  end
end
