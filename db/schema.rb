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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140522025726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ocorrencias", force: true do |t|
    t.string   "tipo_ocorrencia"
    t.text     "descricao"
    t.string   "nome_vitima"
    t.string   "logradouro"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "nome_contato"
    t.string   "telefone_contato"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
