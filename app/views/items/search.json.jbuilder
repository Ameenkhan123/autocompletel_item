json.items do
	json.array!(@items) do |item|
		json.item_list item.item_list
		json.url item_path(item)
	end
end
