class Comment < ApplicationRecord
  include Visible

  # Each comment belongs to one article.
  belongs_to :article
end
