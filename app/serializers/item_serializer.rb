class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :quantity, :description, :image_url, :category_id, :category_name
end
