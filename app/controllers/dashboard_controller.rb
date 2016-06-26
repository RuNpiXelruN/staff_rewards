class DashboardController < ApplicationController

  def index
    @user = current_user
    @comments = Comment.all.order(created_at: :desc)
  end

end
