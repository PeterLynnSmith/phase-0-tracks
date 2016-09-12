class TodoList
	def initialize(list)
		@list = list
	end
	def get_items
		@list 
	end
	def add_item(new_item)
		@list << new_item
		@list
	end
	def delete_item(delete_this)
		@list.delete(delete_this)
		@list
	end
	def get_item(index)
		return @list[index]
	end
end