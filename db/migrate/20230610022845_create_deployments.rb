class CreateDeployments < ActiveRecord::Migration[7.0]
  def change
    create_table :deployments, id: :uuid do |t|
      t.string :name, null: false

      t.uuid :entity_id
      t.uuid :provider_id
      t.string :region

      t.timestamps
    end
  end
end
