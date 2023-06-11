class Deployment < ApplicationRecord
  has_one :provider
  belongs_to :entity

end
