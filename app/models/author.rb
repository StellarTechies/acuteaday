class Author < ActiveRecord::Base
    has_many :post
    has_secure_password
end