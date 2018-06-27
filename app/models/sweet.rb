class Sweet < ApplicationRecord
  validates :name, :ingredients, :base, presence: true

  before_create :set_likes

  def set_likes
    self.likes = 0
  end
end
