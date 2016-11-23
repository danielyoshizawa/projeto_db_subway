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

ActiveRecord::Schema.define(version: 20161123075432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alimentos", force: :cascade do |t|
    t.string   "nome",                   null: false
    t.integer  "proteinas",              null: false
    t.integer  "carboidratos",           null: false
    t.integer  "gorduras",               null: false
    t.integer  "calorias",               null: false
    t.integer  "preco",                  null: false
    t.string   "ingrediente",            null: false
    t.string   "marca",                  null: false
    t.integer  "tipo_de_ingrediente_id", null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["tipo_de_ingrediente_id"], name: "index_alimentos_on_tipo_de_ingrediente_id", using: :btree
  end

  create_table "cidades", force: :cascade do |t|
    t.string   "nome",       null: false
    t.integer  "estado_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id", using: :btree
  end

  create_table "distribuidor_tercerizados", force: :cascade do |t|
    t.string   "nome",       null: false
    t.string   "contato",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distribuidores_tercerizados_bebidas", force: :cascade do |t|
    t.integer  "distribuidor_tercerizado_id"
    t.integer  "alimento_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "cep",           null: false
    t.integer  "numero",        null: false
    t.string   "complemento"
    t.integer  "logradouro_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["logradouro_id"], name: "index_enderecos_on_logradouro_id", using: :btree
  end

  create_table "estados", force: :cascade do |t|
    t.string   "nome",       null: false
    t.string   "sigla",      null: false
    t.integer  "pais_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pais_id"], name: "index_estados_on_pais_id", using: :btree
  end

  create_table "estoque_lojas", force: :cascade do |t|
    t.integer  "alimento_id", null: false
    t.integer  "quantidade",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["alimento_id"], name: "index_estoque_lojas_on_alimento_id", using: :btree
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "cpf",             null: false
    t.string   "telefone",        null: false
    t.string   "nome",            null: false
    t.datetime "data_nascimento", null: false
    t.integer  "salario",         null: false
    t.integer  "endereco_id",     null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["endereco_id"], name: "index_funcionarios_on_endereco_id", using: :btree
  end

  create_table "inventarios", force: :cascade do |t|
    t.integer  "quantidade",            null: false
    t.integer  "item_de_inventario_id", null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["item_de_inventario_id"], name: "index_inventarios_on_item_de_inventario_id", using: :btree
  end

  create_table "item_de_inventarios", force: :cascade do |t|
    t.string   "nome",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logradouros", force: :cascade do |t|
    t.string   "nome",       null: false
    t.string   "tipo",       null: false
    t.integer  "cidade_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_logradouros_on_cidade_id", using: :btree
  end

  create_table "pais", force: :cascade do |t|
    t.string   "nome",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proprietarios", force: :cascade do |t|
    t.string   "cpf",             null: false
    t.string   "telefone",        null: false
    t.string   "nome",            null: false
    t.datetime "data_nascimento", null: false
    t.integer  "endereco_id",     null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["endereco_id"], name: "index_proprietarios_on_endereco_id", using: :btree
  end

  create_table "tipo_de_ingredientes", force: :cascade do |t|
    t.string   "nome",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alimentos", "tipo_de_ingredientes"
  add_foreign_key "cidades", "estados"
  add_foreign_key "enderecos", "logradouros"
  add_foreign_key "estados", "pais", column: "pais_id"
  add_foreign_key "estoque_lojas", "alimentos"
  add_foreign_key "funcionarios", "enderecos"
  add_foreign_key "inventarios", "item_de_inventarios"
  add_foreign_key "logradouros", "cidades"
  add_foreign_key "proprietarios", "enderecos"
end
