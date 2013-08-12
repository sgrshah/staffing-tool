class Project < ActiveRecord::Base
  attr_accessible :name, :commitments_attributes

  has_many :commitments
  has_many :employees, through: :commitments

  accepts_nested_attributes_for :commitments
end
