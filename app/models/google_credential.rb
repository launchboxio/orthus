class GoogleCredential < ApplicationRecord
  include Vault::EncryptedModel
  vault_attribute :google_service_account_key

  belongs_to :entity
end
