class Painting < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :price, presence: true

  mount_uploader :image, PaintingImageUploader

  # def next
  #   self.class.where("created_at < ?", self.created_at).order("created_at DESC").first
  # end
  #
  # def previous
  #   self.class.where("created_at > ?", self.created_at).order("created_at ASC").first
  # end
  
end
