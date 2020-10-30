class Calendar < ApplicationRecord
  validates :title, length: { maximum: 20 }
  validates :title, :date, presence: true
end
