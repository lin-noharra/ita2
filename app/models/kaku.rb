class Kaku < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
end
