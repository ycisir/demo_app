class AddTimestampsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_timestamps :users
  end
end
