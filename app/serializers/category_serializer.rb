class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :items_list
end
