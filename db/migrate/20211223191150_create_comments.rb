class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      # The t.references line creates an integer column called article_id, an index for it, 
      # and a foreign key constraint that points to the id column of the articles table. 
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
