class User < ActiveRecord::Base
  belongs_to :location
  has_attached_file :photos, styles: { medium: "1280x720", thumb: "800x600", mini: "400x200" }
  validates_attachment_content_type :photos, content_type: /\Aimage\/.*\Z/
  # include Paperclip
  has_secure_password
end
