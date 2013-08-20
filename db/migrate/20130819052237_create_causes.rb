class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :content
      t.string :author
      t.date :day
      t.string :country
      t.string :holiday
      t.boolean :approved

      t.timestamps
    end
  end
end
