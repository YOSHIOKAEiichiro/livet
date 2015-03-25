class CreateSupportitems < ActiveRecord::Migration
  def change
    create_table :supportitems do |t|
      t.integer :requestitem_id
      t.string :staff
      t.integer :quantity
      t.string :place
      t.string :mail
      t.text :memo

      t.timestamps
    end
  end
end
