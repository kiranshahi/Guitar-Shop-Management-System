class Guitar < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "240x200#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	belongs_to :user
end