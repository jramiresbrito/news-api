class News < ApplicationRecord
  belongs_to :user
  validates :likes, numericality: { greater_than_or_equal_to: 0 }
  before_validation :set_default_likes, on: :create

  private

  def set_default_likes
    self.likes ||= 0
  end
end
