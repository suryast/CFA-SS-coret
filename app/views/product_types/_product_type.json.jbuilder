json.extract! product_type, :id, :type_name, :price, :in_stock, :created_at, :updated_at
json.url product_type_url(product_type, format: :json)
