class Commitment < ActiveRecord::Base
	attr_accessible :project, :employee, :description,
									:duration_in_weeks, :hours, :employee_id

  belongs_to :project
  belongs_to :employee
end
