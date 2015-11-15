class DashboardController < ApplicationController

  def index
    @minister = current_minister
    @posts = @minister.posts
  end

end
