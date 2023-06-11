class CreateGoogleCredentials < ActiveRecord::Migration[7.0]
  def change
    create_table :google_credentials, id: :uuid do |t|
      t.string :google_service_account_email, null: false
      t.string :google_project_id, null: false
      t.string :google_service_account_key_encrypted
      t.string :google_service_account
      t.uuid :entity_id
      t.timestamps
    end
  end
end
