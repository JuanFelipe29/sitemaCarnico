json.extract! name_of_product, :id, :name, :created_at, :updated_at
json.url name_of_product_url(name_of_product, format: :json)
