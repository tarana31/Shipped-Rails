class AddJobIdToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :job_id, :integer
  end
end
