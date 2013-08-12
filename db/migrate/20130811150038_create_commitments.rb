class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
    	t.integer :employee_id
    	t.integer :project_id
    	t.string :description
    	t.integer :duration_in_weeks
    	t.integer :hours
      t.timestamps
    end
  end
end
