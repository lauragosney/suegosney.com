class Painting < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :price, presence: true

  mount_uploader :image, PaintingImageUploader

  def to_param
    id.to_s + "-" + title.parameterize
  end

  def next
    self.class.where("created_at < ?", self.created_at).order("created_at DESC").first
  end

  def previous
    self.class.where("created_at > ?", self.created_at).order("created_at ASC").first
  end

end
