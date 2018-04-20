class WelcomeController < ApplicationController
	impressionist actions: [:show], unique: [:session_hash]
	autocomplete :item , :item_list
	def index
		if params[:search]
			@items = Item.name_like("%#{params[:search]}%").order('item_list')
		else
			@items = Item.all
		end
	end

	autocomplete :item_list , :name
	def autocomplete_item_list
		term = params[:term_params] || nil
		items = []
		items = Items
		.where('item LIKE ?', "%#{item_list}%")
		.limit(limit)
		.offset(offset) if term
		render json: items
	end
end
