class Calendar < ApplicationRecord
  belongs_to :user
  validates :title, length: { maximum: 20 }, presence: true
  validates :date, presence: true
end
