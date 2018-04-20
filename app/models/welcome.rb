class Welcome < ApplicationRecord

	is_impressionable counter_cache: true, :unique => true
	belongs_to :item, optional: true# Doctor association
	belongs_to :user, optional: true # paitent association
end
