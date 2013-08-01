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

ActiveRecord::Schema.define(:version => 20130801012152) do

  create_table "instruments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "topic_id"
    t.text     "content"
    t.boolean  "inline_images"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "tenant_id"
  end

  add_index "posts", ["tenant_id"], :name => "index_posts_on_tenant_id"
  add_index "posts", ["topic_id"], :name => "index_posts_on_topic_id"

  create_table "presets", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "sounds_like"
    t.string   "generes"
    t.string   "url"
    t.integer  "instrument_id"
    t.integer  "tenant_id"
    t.boolean  "smaple"
    t.boolean  "loop"
    t.boolean  "soundfont"
    t.boolean  "synth"
    t.boolean  "private"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "presets", ["instrument_id"], :name => "index_presets_on_instrument_id"
  add_index "presets", ["tenant_id"], :name => "index_presets_on_tenant_id"
  add_index "presets", ["user_id"], :name => "index_presets_on_user_id"

  create_table "songs", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "performer"
    t.string   "sounds_like"
    t.text     "lyrics"
    t.text     "guitar_tab"
    t.text     "bass_tabs"
    t.string   "youtube_url"
    t.string   "midi_file_url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "songs", ["user_id"], :name => "index_songs_on_user_id"

  create_table "tenants", :force => true do |t|
    t.string   "name"
    t.string   "subdomain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "tenant_id"
  end

  add_index "topics", ["tenant_id"], :name => "index_topics_on_tenant_id"
  add_index "topics", ["user_id"], :name => "index_topics_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subdomain"
    t.string   "picture_url"
    t.string   "plays_intruments"
    t.string   "liked_generes"
    t.string   "location"
    t.string   "sounds_like"
    t.string   "password_digest"
    t.boolean  "admin"
    t.integer  "tenant_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "users", ["tenant_id"], :name => "index_users_on_tenant_id"

end
