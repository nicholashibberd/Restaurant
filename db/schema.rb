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

ActiveRecord::Schema.define(:version => 20110221142449) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "postcode"
    t.string   "phone"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  create_table "datafiles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", :force => true do |t|
    t.integer  "menu_id"
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "parent_id"
  end

  create_table "elements", :force => true do |t|
    t.integer  "page_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.integer  "site_id"
  end

  create_table "items", :force => true do |t|
    t.integer  "dish_id"
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "navigation_menu_id"
    t.integer  "parent_id"
    t.string   "controller"
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.integer  "site_id"
    t.string   "menu_type"
    t.integer  "parent_id"
  end

  create_table "navigation_menus", :force => true do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "start_date"
    t.string   "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "conditions"
    t.integer  "position"
    t.integer  "site_id"
  end

  create_table "opening_times", :force => true do |t|
    t.string   "day"
    t.time     "open"
    t.time     "close"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "info_id"
    t.integer  "site_id"
  end

  create_table "orders", :force => true do |t|
    t.integer  "customer_id"
    t.string   "time"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
    t.integer  "site_id"
    t.integer  "position"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "role"
    t.text     "profile"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.integer  "site_id"
  end

  create_table "photos", :force => true do |t|
    t.string   "name"
    t.integer  "gallery_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "caption"
  end

  create_table "reservations", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.date     "date"
    t.string   "time"
    t.integer  "number_of_people"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "domain"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.string   "address"
    t.text     "content"
    t.text     "directions"
    t.string   "latlong"
    t.integer  "menus_template"
    t.integer  "checkout_template"
    t.integer  "galleries_template"
    t.integer  "homepage_template"
    t.integer  "location_template"
    t.integer  "offers_template"
    t.integer  "people_template"
    t.integer  "reservations_template"
    t.integer  "testimonials_template"
    t.integer  "dishes_template"
    t.integer  "orders_template"
  end

  create_table "testimonials", :force => true do |t|
    t.text     "testimonial"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.integer  "site_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.string   "status"
    t.integer  "site_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "wines", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "small"
    t.integer  "large"
    t.integer  "carafe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.integer  "menu_id"
    t.integer  "position"
  end

end
