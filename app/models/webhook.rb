class Webhook < ApplicationRecord
  has_one :entity
  has_one :deployment

  validates_presence_of :endpoint
  validates_presence_of :event
end
