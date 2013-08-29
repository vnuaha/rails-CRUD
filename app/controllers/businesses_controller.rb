class BusinessesController < ApplicationController

#basic authentication, applies to every action in controller
#http_basic_authenticate_with :name => "admin", :password => "admin"

def index
    @all_businesses = Business.all
end

def edit
    @business = Business.find(params[:id])
end

def show
  @business = Business.find(params[:id])
end

def new
    @business = Business.new
end

def create
    @business = Business.new(params[:business])
    if @business.save
        redirect_to @business
    else
        render 'new'
    end
end

def update
  @business = Business.find(params[:id])
 
  if @business.update(params[:business])
    redirect_to @business
  else
    render 'edit'
  end
end

def destroy
  @business = Business.find(params[:id])
  @business.destroy
 
  redirect_to businesses_path
end

end
