class Author < ApplicationRecord
    has_many :author_books
    has_many :books, :through => :author_books

    def short_name
        given_name[0]+'.'+family_name
    end

    def self.custom_select(filter) # alternativ mit “scope” 
        authors = Author.order('family_name asc')
        case filter
        when 'no_books'
            authors = authors.select {|a| a.books.empty?}
        end
    
        return authors
    end
    
end
