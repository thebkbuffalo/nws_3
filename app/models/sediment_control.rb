class SedimentControl < ActiveRecord::Base
  has_attached_file :sediment_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://www.fillmurray.com/300/300"
  validates_attachment_content_type :sediment_pic, content_type: /\Aimage\/.*\Z/
end
