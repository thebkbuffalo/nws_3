class KxPro < ActiveRecord::Base
  has_attached_file :kx_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://www.fillmurray.com/300/300"
  validates_attachment_content_type :kx_pic, content_type: /\Aimage\/.*\Z/
end
