class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.string :description
      t.decimal :unit_price
      t.string :unit

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
