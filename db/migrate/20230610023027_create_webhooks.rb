class CreateWebhooks < ActiveRecord::Migration[7.0]
  def change
    create_table :webhooks do |t|
      t.uuid :entity_id
      t.uuid :provider_id
      t.uuid :deployment_id
      t.string :endpoint
      t.string :event
      t.timestamps
    end
  end
end
