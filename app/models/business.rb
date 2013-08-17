class Business < ActiveRecord::Base
  attr_accessible :name, :type, :email, :location, :phone, :description
  
  validates :name, presence: true, length: { minimum: 4} #minimum name length is 4
                                                            #name is required
  validates :location, presence: true   #location is required
  
end
