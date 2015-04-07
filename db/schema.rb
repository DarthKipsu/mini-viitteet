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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150407125832) do

  create_table "booklets", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "howpublished"
    t.string   "address"
    t.integer  "month"
    t.integer  "year"
    t.string   "note"
    t.string   "key"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "bibtexkey"
  end

  create_table "books", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.integer  "year"
    t.string   "publisher"
    t.string   "address"
    t.string   "series"
    t.string   "edition"
    t.integer  "month"
    t.string   "note"
    t.string   "key"
    t.string   "editor"
    t.string   "bibtexkey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inbooks", force: :cascade do |t|
    t.string   "author"
    t.string   "editor"
    t.string   "title"
    t.string   "chapter"
    t.string   "pages"
    t.string   "publisher"
    t.integer  "year"
    t.string   "volume"
    t.string   "number"
    t.string   "series"
    t.string   "type"
    t.string   "address"
    t.string   "edition"

ActiveRecord::Schema.define(version: 20150407133400) do

  create_table "articles", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.string   "journal"
    t.integer  "year"
    t.string   "volume"
    t.integer  "number"
    t.string   "pages"
    t.integer  "month"
    t.string   "note"
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "bibtexkey"
  end

  create_table "inproceedings", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.string   "booktitle"
    t.integer  "year"
    t.string   "editor"
    t.string   "volume"
    t.integer  "number"
    t.string   "series"
    t.string   "pages"
    t.string   "address"
    t.integer  "month"
    t.string   "organization"
    t.string   "publisher"
    t.string   "note"
    t.string   "key"
    t.string   "bibtexkey"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "manuals", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "organization"
    t.string   "address"
    t.string   "edition"
    t.string   "month"
    t.integer  "year"
    t.string   "note"
    t.string   "key"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "bibtexkey"

  create_table "phdtheses", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.string   "school"
    t.integer  "year"
    t.string   "type"
    t.string   "address"
    t.integer  "month"
    t.string   "note"
    t.string   "key"
    t.string   "bibtexkey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publication_articles", force: :cascade do |t|
    t.integer  "publication_id"
    t.integer  "article_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "publication_phdtheses", force: :cascade do |t|
    t.integer  "publication_id"
    t.integer  "phdthesis_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
