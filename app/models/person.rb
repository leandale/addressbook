class Person < ActiveRecord::Base
  has_and_belongs_to_many :groups
  attr_accessible :address1, :address2, :city, :country, :email, :name, :phone, :state, :zip_code
end
