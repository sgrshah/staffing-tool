class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :first_name
    	t.string :last_name    	
    	# t.integer :rank_id
    	# t.integer :team_id
      t.timestamps
    end
  end
end
