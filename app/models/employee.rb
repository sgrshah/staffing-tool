class Employee < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :commitments
  has_many :projects, through: :commitments
end
