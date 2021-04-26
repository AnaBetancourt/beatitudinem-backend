class Category < ApplicationRecord
    has_many :items

    def items_list
        self.items
    end
end
