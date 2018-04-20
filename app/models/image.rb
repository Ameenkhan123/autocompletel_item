class Image < ApplicationRecord
	
  belongs_to :imageable, polymorphic: true, optional: true
    mount_uploader :images, ImagesUploader
    serialize :images, JSON 
	# has_attached_file :images, :styles => { :medium => "300x300>",:thumb => "100x100>" }
	
	# validates_attachment 	:images, 
	# 			:presence => true,
	# 			:content_type => { :content_type => /\Aimage\/.*\Z/ },
	# 			:size => { :less_than => 1.megabyte }
end
