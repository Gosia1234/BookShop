json.extract! sale, :id, :saleTotal, :qtySold, :saleDate, :user_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
