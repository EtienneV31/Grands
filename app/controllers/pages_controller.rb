class PagesController < ApplicationController
  def index
    @activities = Activity.all
    @users = User.all
  end
end
