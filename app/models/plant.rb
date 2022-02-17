class Plant < ApplicationRecord
  belongs_to :garden
  validates :name, :img_url, presence: true
end
