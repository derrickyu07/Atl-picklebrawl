class HomeController < ApplicationController
  def index
  end
  def about
  end
  def gallery
    @tournaments = Tournament.includes(:images).all
  end
end
