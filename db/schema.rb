# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_20_220413) do

  create_table "local_armazenamentos", force: :cascade do |t|
    t.string "nome", limit: 20
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movimentacaos", force: :cascade do |t|
    t.integer "produto_id"
    t.integer "local_armazenamento_id"
    t.string "tipo", limit: 1
    t.date "data"
    t.float "quantidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["local_armazenamento_id"], name: "index_movimentacaos_on_local_armazenamento_id"
    t.index ["produto_id"], name: "index_movimentacaos_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome", limit: 20
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "movimentacaos", "local_armazenamentos"
  add_foreign_key "movimentacaos", "produtos"
end
