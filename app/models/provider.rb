class Provider < ApplicationRecord
  belongs_to :entity
  belongs_to :credential, polymorphic: true
end
