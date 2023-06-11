class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities, id: :uuid  do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :subdomain, null: false, index: { unique: true }
      t.string :webhook_secret_key_encrypted, index: { unique: true }
      t.string :auth_provider, null: true
      t.string :auth_configuration_encrypted
      t.timestamps
    end
  end
end
