class UsersController < ApplicationController
	before_action :signed_in_user, only: [:edit, :update]
	before_action :correct_user,   only: [:edit, :update]
	before_action :admin_user,     only: :destroy
    
    # User.find_by(email: "mhartl@example.com")
    
	def index
		@users = User.paginate(page: params[:page])
	end
	
	def new
		@user = User.new
	end
  
	def show
	    # gravatar: <%= gravatar_for @user %>
	    #  all we need to do is construct the proper Gravatar image URL using the user’s email address and the corresponding Gravatar image will automatically appear
	    # @user = User.find(params[:id])
		@user = User.find(user_params)
	end
  
	def edit
	end
	
	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User destroyed."
		redirect_to users_url
	end
  
	def update
		@user = User.find(params[:id])
		
		# user.update_attributes(name: "The Dude", email: "dude@abides.org")
		
		if @user.update_attributes(user_params)
			# Handle a successful update.
			flash[:success] = "Profile updated"
			sign_in @user
			redirect_to @user
		else
			render 'edit'
		end
    end
  
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to the directory!"
			redirect_to @user
		else
			render 'new'
		end
	end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
    # Before filters

    def signed_in_user
		unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
		end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
