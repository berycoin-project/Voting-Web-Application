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

ActiveRecord::Schema.define(version: 20180411215718) do

  create_table "addresses", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "country"
    t.string   "city"
    t.string   "zip_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "pic_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "profile_addresses", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_profile_addresses_on_address_id"
    t.index ["profile_id"], name: "index_profile_addresses_on_profile_id"
  end

  create_table "profile_contacts", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_profile_contacts_on_contact_id"
    t.index ["profile_id"], name: "index_profile_contacts_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "date_of_birth"
    t.string   "gender"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "project_categories", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_project_categories_on_category_id"
    t.index ["project_id"], name: "index_project_categories_on_project_id"
  end

  create_table "project_comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_project_comments_on_comment_id"
    t.index ["project_id"], name: "index_project_comments_on_project_id"
    t.index ["user_id"], name: "index_project_comments_on_user_id"
  end

  create_table "project_reactions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "reaction_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_project_reactions_on_project_id"
    t.index ["reaction_id"], name: "index_project_reactions_on_reaction_id"
    t.index ["user_id"], name: "index_project_reactions_on_user_id"
  end

  create_table "project_statuses", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_statuses_on_project_id"
    t.index ["status_id"], name: "index_project_statuses_on_status_id"
  end

  create_table "project_votes", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "vote_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_votes_on_project_id"
    t.index ["user_id"], name: "index_project_votes_on_user_id"
    t.index ["vote_id"], name: "index_project_votes_on_vote_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "project_content"
    t.string   "project_skills"
    t.float    "project_budget"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string   "name"
    t.float    "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reactions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_user_profiles_on_profile_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "user_projects", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_user_projects_on_project_id"
    t.index ["user_id"], name: "index_user_projects_on_user_id"
  end

  create_table "user_ranks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "rank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rank_id"], name: "index_user_ranks_on_rank_id"
    t.index ["user_id"], name: "index_user_ranks_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_user_skills_on_skill_id"
    t.index ["user_id"], name: "index_user_skills_on_user_id"
  end

  create_table "user_wallets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "wallet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_wallets_on_user_id"
    t.index ["wallet_id"], name: "index_user_wallets_on_wallet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string   "name"
    t.string   "vote_type"
    t.float    "vote_weight"
    t.text     "vote_message"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.string   "name"
    t.string   "wallet_address"
    t.float    "wallet_balance"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
