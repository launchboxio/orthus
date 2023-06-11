class AwsCredential < ApplicationRecord
  include Vault::EncryptedModel
  vault_attribute :aws_access_key_id
  vault_attribute :aws_secret_access_key

  belongs_to :entity
end
