class Article < ApplicationRecord
    include Visible

    # One article can have many comments.
    has_many :comments

    alidates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
  