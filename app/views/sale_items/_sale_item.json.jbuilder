json.extract! sale_item, :id, :salePrice, :returned, :book_id, :sale_id, :created_at, :updated_at
json.url sale_item_url(sale_item, format: :json)
