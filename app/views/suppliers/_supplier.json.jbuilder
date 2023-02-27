json.extract! supplier, :id, :name, :nit, :email, :phone, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
