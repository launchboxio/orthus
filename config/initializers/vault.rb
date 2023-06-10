require "vault/rails"

Vault::Rails.configure do |vault|
  vault.enabled = true
  vault.application = "orthus"
  vault.address = "http://127.0.0.1:8200"
  vault.token = "root"
end