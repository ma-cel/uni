class User < ApplicationRecord
    has_many :book_instances

    def short_name
        given_name[0]+'.'+family_name
    end
    
end
