class Photo < ActiveRecord::Base
  attr_accessible :title#, :image, :image_cache

  # Associations
  belongs_to :section

 # CarrierWave
  # mount_uploader :image, ImageUploader

  # Validations
  validates :title,             length: { within: 3..254, allow_blank: true }
  # validates :image,         presence: true
  validates :section_id,   presence: true, on: :create

  # Callbacks
  # before_validation :save_dimensions, :save_orientation

  # Scopes

  # private
  # def save_dimensions
  #   if image.path
  #     self.width  = MiniMagick::Image.open(image.path)[:width]
  #     self.height = MiniMagick::Image.open(image.path)[:height]
  #   end
  # end

  # def save_orientation
  #   if image.path
  #     self.orientation = (height.to_i > width.to_i) ? 'portrait' : 'landscape'
  #   end
  # end

end
