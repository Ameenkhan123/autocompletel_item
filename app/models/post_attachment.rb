class PostAttachment < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	belongs_to :post, optional: true
end
