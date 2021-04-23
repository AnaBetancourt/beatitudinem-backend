class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :quantity, :description, :image_url
  belongs_to :category
end
