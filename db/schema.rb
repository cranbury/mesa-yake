# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_05_012507) do

  create_table "meals", force: :cascade do |t|
    t.integer "mesa_id"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mesas", force: :cascade do |t|
    t.string "name"
    t.integer "restaurant_id"
    t.integer "seats"
    t.boolean "abierto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mesero_meals", force: :cascade do |t|
    t.integer "meal_id"
    t.integer "mesero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meseros", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modifiers", force: :cascade do |t|
    t.string "name"
    t.integer "product_id"
    t.decimal "precio_adicional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modify_ordens", force: :cascade do |t|
    t.integer "mod_id"
    t.string "mod_type"
    t.integer "orden_product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orden_products", force: :cascade do |t|
    t.integer "product_id"
    t.integer "orden_id"
    t.integer "quantity"
    t.boolean "gratis", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordens", force: :cascade do |t|
    t.integer "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "precio"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "type"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "nickname"
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.integer "product_id"
    t.decimal "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
