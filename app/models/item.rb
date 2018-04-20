class Item < ApplicationRecord	
	scope :name_like, -> (item_list) { where("item_list like ?", item_list)}
	mount_uploader :item_img, AvatarUploader
	has_many :images, as: :imageable, :dependent => :destroy  

    has_many :welcomes, :dependent => :destroy #appoinment association

    accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
	geocoded_by :tips               # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
    

    # def item
    # 	item.try(:item_list)
    # end

    # def item=(item_list)
    # 	self.item = Item.find_or_create_by(item_list: item_list) if item_list.present?
    # end
end
