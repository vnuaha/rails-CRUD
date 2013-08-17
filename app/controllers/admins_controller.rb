class AdminsController < ApplicationController

#tutorial: http://railscasts.com/episodes/270-authentication-in-rails-3-1?view=asciicast

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      redirect_to admins_path, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
