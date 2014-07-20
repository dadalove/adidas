class CreateCloths < ActiveRecord::Migration
  def change
    create_table :cloths do |t|
      t.string :name
      t.string :color
      t.string :size
      t.string :production
      t.integer :price
      t.integer :amount

      t.timestamps
    end
  end
end
