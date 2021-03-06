class ShoutsController < ApplicationController
  def show
    @shout = Shout.new
  end

  def create
    current_user.shouts.create(shout_params)
    redirect_to dashboard_path
  end

  private

  def shout_params
    params.require(:shout).permit(:content)
  end
end