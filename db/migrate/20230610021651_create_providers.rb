class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.uuid :entity_id
      t.references :credential, type: :uuid, polymorphic: true
      t.timestamps
    end
  end
end
