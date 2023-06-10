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

ActiveRecord::Schema[7.0].define(version: 2023_06_10_022845) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "aws_credentials", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "identity"
    t.string "aws_access_key_id_encrypted"
    t.string "aws_secret_access_key_encrypted"
    t.string "aws_iam_role_arn"
    t.string "aws_account_id", null: false
    t.uuid "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deployments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.uuid "entity_id"
    t.uuid "provider_id"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "subdomain", null: false
    t.string "webhook_secret_key_encrypted"
    t.string "auth_provider"
    t.string "auth_configuration_encrypted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_entities_on_name", unique: true
    t.index ["subdomain"], name: "index_entities_on_subdomain", unique: true
    t.index ["webhook_secret_key_encrypted"], name: "index_entities_on_webhook_secret_key_encrypted", unique: true
  end

  create_table "google_credentials", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "google_service_account_email", null: false
    t.string "google_project_id", null: false
    t.string "google_service_account_key_encrypted"
    t.string "google_service_account"
    t.uuid "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.uuid "entity_id"
    t.string "credential_type"
    t.uuid "credential_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["credential_type", "credential_id"], name: "index_providers_on_credential"
  end

end
