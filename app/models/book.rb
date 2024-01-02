class Book < ApplicationRecord
	encrypts :author
	enum genre: { fantasy: 1, romance: 2, horror: 3, fiction: 4, poetry: 5 }

	def self.ransackable_attributes(auth_object = nil)
	    ["author", "created_at", "genre", "id", "id_value", "isbn", "name", "price", "status", "updated_at", "year"]
	 end
end
