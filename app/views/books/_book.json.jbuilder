json.extract! book, :id, :title, :author, :pages, :costPrice, :ISBN, :gty, :publisher, :description, :image, :relaseDate, :supplier_id, :created_at, :updated_at, :category
json.url book_url(book, format: :json)
