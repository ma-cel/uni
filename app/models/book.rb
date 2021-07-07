class Book < ApplicationRecord
    has_many :book_instances, dependent: :delete_all
    has_and_belongs_to_many :authors, join_table: "authors_books"
end
