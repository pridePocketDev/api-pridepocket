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

ActiveRecord::Schema.define(version: 20180419050143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaign_donor_posts", force: :cascade do |t|
    t.bigint "campaign_id"
    t.bigint "donor_id"
    t.string "post_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_donor_posts_on_campaign_id"
    t.index ["donor_id"], name: "index_campaign_donor_posts_on_donor_id"
  end

  create_table "campaign_hosts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "self_description"
    t.string "profile_image_url"
    t.bigint "wepay_account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_campaign_hosts_on_user_id"
    t.index ["wepay_account_id"], name: "index_campaign_hosts_on_wepay_account_id"
  end

  create_table "campaign_posts", force: :cascade do |t|
    t.bigint "campaign_id"
    t.string "post_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_posts_on_campaign_id"
  end

  create_table "campaign_tags", force: :cascade do |t|
    t.bigint "campaign_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_tags_on_campaign_id"
    t.index ["tag_id"], name: "index_campaign_tags_on_tag_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.bigint "campaign_host_id"
    t.integer "goal_amount_cents"
    t.string "welcome_message"
    t.string "thank_you_note"
    t.datetime "published"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string "description"
    t.bigint "privacy_level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_host_id"], name: "index_campaigns_on_campaign_host_id"
    t.index ["privacy_level_id"], name: "index_campaigns_on_privacy_level_id"
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "campaign_id"
    t.bigint "donor_id"
    t.integer "amount_cents"
    t.string "wepay_transaction_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_donations_on_campaign_id"
    t.index ["donor_id"], name: "index_donations_on_donor_id"
  end

  create_table "donors", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_donors_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "campaign_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_photos_on_campaign_id"
  end

  create_table "privacy_levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_privacy_levels_on_name", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wepay_accounts", force: :cascade do |t|
    t.string "token"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wepay_accounts_on_user_id"
  end

  create_table "wishlist_items", force: :cascade do |t|
    t.bigint "campaign_id"
    t.string "item_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_wishlist_items_on_campaign_id"
  end

  add_foreign_key "campaign_donor_posts", "campaigns"
  add_foreign_key "campaign_donor_posts", "donors"
  add_foreign_key "campaign_hosts", "users"
  add_foreign_key "campaign_hosts", "wepay_accounts"
  add_foreign_key "campaign_posts", "campaigns"
  add_foreign_key "campaign_tags", "campaigns"
  add_foreign_key "campaign_tags", "tags"
  add_foreign_key "campaigns", "campaign_hosts"
  add_foreign_key "campaigns", "privacy_levels"
  add_foreign_key "donations", "campaigns"
  add_foreign_key "donations", "donors"
  add_foreign_key "donors", "users"
  add_foreign_key "photos", "campaigns"
  add_foreign_key "wepay_accounts", "users"
  add_foreign_key "wishlist_items", "campaigns"
end
