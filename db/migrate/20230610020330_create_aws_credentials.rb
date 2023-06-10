class CreateAwsCredentials < ActiveRecord::Migration[7.0]
  def change
    create_table :aws_credentials, id: :uuid do |t|
      t.string :identity
      t.string :aws_access_key_id_encrypted
      t.string :aws_secret_access_key_encrypted
      t.string :aws_iam_role_arn
      t.string :aws_account_id, null: false
      t.uuid :entity_id
      t.timestamps
    end
  end
end
