json.extract! product, :id, :name, :price, :description, :in_stock, :created_at, :updated_at
json.url product_url(product, format: :json)
