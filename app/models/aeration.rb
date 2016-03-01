class Aeration < ActiveRecord::Base
  has_attached_file :aeration_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://www.fillmurray.com/300/300"
  validates_attachment_content_type :aeration_pic, content_type: /\Aimage\/.*\Z/
end
