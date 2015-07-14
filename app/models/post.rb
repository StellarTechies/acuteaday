class Post < ActiveRecord::Base
    belongs_to :author
    has_and_belongs_to_many :category
    has_many :comment
end
