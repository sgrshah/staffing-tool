class CreateEmployeeCommitments < ActiveRecord::Migration
  def change
    create_table :employee_commitments do |t|

      t.timestamps
    end
  end
end
