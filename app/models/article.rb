class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end

  

# One article can have many comments.
# If you set the :dependent option to: :destroy, when the object is destroyed, destroy will be called on its associated objects
# Articles have associated comment objects