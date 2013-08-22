class AddDayToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :day, :integer
  end
end
