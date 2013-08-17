class Admin < ActiveRecord::Base
    attr_accessible :email, :password, :password_confirmation

    has_secure_password #This adds methods to set and authenticate the entered password, 
                        #adds validators for the password and password confirmation and 
                        #also adds authentication functionality
                        #password_digest field stores hashed passwords
    validates_presence_of :password, :on => :create


end
