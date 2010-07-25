# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100721210119) do

  create_table "product_translations", :force => true do |t|
    t.integer "product_id"
    t.string  "locale"
    t.string  "title"
    t.text    "description"
  end

  add_index "product_translations", ["locale", "product_id"], :name => "index_product_translations_on_locale_and_product_id", :unique => true
  add_index "product_translations", ["locale"], :name => "index_product_translations_on_locale"

  create_table "products", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.decimal  "unit_price"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
