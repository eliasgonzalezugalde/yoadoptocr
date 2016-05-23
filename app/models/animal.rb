class Animal < ActiveRecord::Base
  belongs_to :location
# include Paperclip
  has_attached_file :photos, styles: { medium: "1280x720", thumb: "800x600", mini: "230x230" }
  validates_attachment_content_type :photos, content_type: /\Aimage\/.*\Z/
  validates :title, presence: true
end
