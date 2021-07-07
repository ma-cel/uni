json.extract! book_instance, :id, :shelfmark, :purchased_at, :lended_by_id, :book_id, :reserved_by_id, :created_at, :updated_at
json.url book_instance_url(book_instance, format: :json)
