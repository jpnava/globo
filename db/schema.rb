# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111128050643) do

  create_table "categorias", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comidas", :force => true do |t|
    t.string   "titulo"
    t.integer  "categoria_id"
    t.integer  "sabor_id"
    t.integer  "precio"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comidas", ["categoria_id"], :name => "index_comidas_on_categoria_id"
  add_index "comidas", ["sabor_id"], :name => "index_comidas_on_sabor_id"

  create_table "promociones", :force => true do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sabores", :force => true do |t|
    t.string   "sabor1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "useres", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "useres_sessiones", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
