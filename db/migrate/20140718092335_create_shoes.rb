class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :color
      t.float :size
      t.string :production
      t.integer :price
      t.integer :amount

      t.timestamps
    end
  end
end
