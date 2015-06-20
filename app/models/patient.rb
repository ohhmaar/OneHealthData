class Patient < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "60x60#" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	has_attached_file :document
	validates_attachment :document, content_type: { content_type: "application/pdf" }
end