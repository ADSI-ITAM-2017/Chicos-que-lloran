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

ActiveRecord::Schema.define(version: 20170518144134) do

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario1_id"
    t.integer "usuario2_id"
  end

  create_table "p_comments", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "propiedad_id"
    t.integer "califiacion"
    t.index ["propiedad_id"], name: "index_p_comments_on_propiedad_id"
  end

  create_table "propiedads", force: :cascade do |t|
    t.string "arrendador"
    t.string "direccion"
    t.float "precio"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id"
    t.string "imagen"
    t.boolean "apartada"
    t.index ["usuario_id"], name: "index_propiedads_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
