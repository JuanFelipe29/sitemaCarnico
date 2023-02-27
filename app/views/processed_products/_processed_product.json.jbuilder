json.extract! processed_product, :id, :name_of_products_id, :product_type_id, :created_at, :updated_at
json.url processed_product_url(processed_product, format: :json)
