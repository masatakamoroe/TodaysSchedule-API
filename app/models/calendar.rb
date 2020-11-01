class Calendar < ApplicationRecord
  validates :title, length: { maximum: 20 }, presence: true
  validates :date, presence: true
end
