class Region < ApplicationRecord
  validates :name, :region, presence: true
end
