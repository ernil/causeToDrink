class RemoveDayFromCauses < ActiveRecord::Migration
  def up
    remove_column :causes, :day
  end

  def down
    add_column :causes, :day, :date
  end
end
