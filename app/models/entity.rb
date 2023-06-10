class Entity < ApplicationRecord
  include Vault::EncryptedModel
  vault_attribute :webhook_secret_key

  validates :name, presence: true
  validates :subdomain, presence: true

  before_create :generate_secret_key

  has_many :aws_credentials
  has_many :google_credentials
  has_many :providers
  has_many :deployments

  private
  def generate_secret_key
    self.webhook_secret_key = SecureRandom.hex(24) if self.webhook_secret_key.blank?
  end
end
