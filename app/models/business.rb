class Business < ActiveRecord::Base
  attr_accessible :name, :email, :location, :phone, :description #:type
  
  validates :name, presence: true, length: { minimum: 4} #minimum name length is 4
                                                            #name is required
  validates :location, presence: true   #location is required
  
end
