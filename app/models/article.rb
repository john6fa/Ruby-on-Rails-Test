class Article < ApplicationRecord
    # One article can have many comments.
    has_many :comments

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
  