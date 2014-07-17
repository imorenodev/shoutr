class DashboardsController < ApplicationController

  def show
    @shout = TextShout.new
    @shouts = current_user.shouts
    @photo_shout = PhotoShout.new
    @followed_users = current_user.followed_users
    @followers = current_user.followers
    @timeline = current_user.timeline
  end
end