class AddedDone < ActiveRecord::Migration[5.0]
  def change
    add_column :supports, :job_done, :boolean, :default => false
  end
end
