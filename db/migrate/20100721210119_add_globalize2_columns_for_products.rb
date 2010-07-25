class AddGlobalize2ColumnsForProducts < ActiveRecord::Migration
  def self.up
    create_table :product_translations, :force => true do |t|
      t.references :product
      t.string     :locale
      t.string     :title
      t.text       :description
    end

    add_index :product_translations, :locale
    add_index :product_translations, [:locale, :product_id], :unique => true
  end

  def self.down
    drop_table :product_translations
  end
end
