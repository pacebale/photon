class Album < ActiveRecord::Base
  belongs_to :user

  has_many :album_photos
  has_many :photos, through: :album_photos

  validates :title, presence: true

  def published
    !!(self.published_at and self.published_at < Time.now)
  end
end
