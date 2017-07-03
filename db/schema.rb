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

ActiveRecord::Schema.define(version: 20170703031834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atividades", force: :cascade do |t|
    t.integer "impacto"
    t.string "quando"
    t.string "quem"
    t.string "evidencia"
    t.integer "sequencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quimica_performance_id"
    t.index ["quimica_performance_id"], name: "index_atividades_on_quimica_performance_id"
  end

  create_table "coachees", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "idade"
    t.string "sexo"
    t.string "objetivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usuario_id"
    t.index ["usuario_id"], name: "index_coachees_on_usuario_id"
  end

  create_table "ferramenta", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quimica_performances", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "coachee_id"
    t.bigint "ferramenta_id"
    t.index ["coachee_id"], name: "index_quimica_performances_on_coachee_id"
    t.index ["ferramenta_id"], name: "index_quimica_performances_on_ferramenta_id"
  end

  create_table "roda_equ_vidas", force: :cascade do |t|
    t.integer "saude"
    t.integer "deseIntelectual"
    t.integer "equiEmocional"
    t.integer "realizacaoProposito"
    t.integer "recursosFinanceiros"
    t.integer "contribuicaoSocial"
    t.integer "familia"
    t.integer "deseAmoroso"
    t.integer "vidaSocial"
    t.integer "hobbiesDiversoes"
    t.integer "plenitudeFelicidade"
    t.integer "espiritualidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ferramenta_id"
    t.bigint "coachee_id"
    t.string "nome"
    t.index ["coachee_id"], name: "index_roda_equ_vidas_on_coachee_id"
    t.index ["ferramenta_id"], name: "index_roda_equ_vidas_on_ferramenta_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "password_digest"
    t.string "email"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "atividades", "quimica_performances"
  add_foreign_key "coachees", "usuarios"
  add_foreign_key "quimica_performances", "coachees"
  add_foreign_key "quimica_performances", "ferramenta", column: "ferramenta_id"
  add_foreign_key "roda_equ_vidas", "coachees"
  add_foreign_key "roda_equ_vidas", "ferramenta", column: "ferramenta_id"
end
