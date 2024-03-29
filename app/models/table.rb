class Table < ApplicationRecord
  belongs_to :restaurant
  attribute :is_available, :boolean, default: true
end
