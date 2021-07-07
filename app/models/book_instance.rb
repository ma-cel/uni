class BookInstance < ApplicationRecord
  belongs_to :lended_by, class_name: 'User', optional: true
  belongs_to :book, class_name: 'Book'
  belongs_to :reserved_by, class_name: 'User', optional: true
end
