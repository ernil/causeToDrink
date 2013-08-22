class AddMonthToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :month, :integer
  end
end
