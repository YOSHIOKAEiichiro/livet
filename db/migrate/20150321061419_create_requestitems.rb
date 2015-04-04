class CreateRequestitems < ActiveRecord::Migration
  def change
    create_table :requestitems do |t|
      t.string :name
      t.string :staff
      t.string :mail
      t.string :area
      t.integer :groupid
      t.integer :quantity
      t.string :place
      t.text :memo

      t.timestamps
    end
  end
end
