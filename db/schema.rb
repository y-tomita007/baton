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

ActiveRecord::Schema.define(version: 2018_11_27_015104) do

  create_table "m_credits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", force: :cascade do |t|
    t.integer "m_user_id", null: false, comment: "ユーザーID"
    t.string "name", default: "", null: false, comment: "名義"
    t.string "number", default: "", null: false, comment: "識別番号(クレジット番号上4桁)"
    t.string "company", comment: "カード会社"
    t.string "expire_on", null: false, comment: "クレジットカード有効期限"
    t.boolean "use_flag", default: false, null: false, comment: "使用フラグ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", force: :cascade do |t|
    t.string "name", default: "", null: false, comment: "顧客名称"
    t.string "email", default: "", null: false, comment: "メールアドレス"
    t.string "poccess", default: "0", null: false, comment: "ライセンス保有数"
    t.boolean "delete_flag", default: false, null: false, comment: "削除フラグ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
