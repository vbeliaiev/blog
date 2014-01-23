class Comment < ActiveRecord::Base
  belongs_to :post
end
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post, index: true
 
      t.timestamps
    end
 
  end
end