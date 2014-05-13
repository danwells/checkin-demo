class AddUserToArrival < ActiveRecord::Migration
  def change
    add_column :arrivals, :user_id, :integer
  end
end
