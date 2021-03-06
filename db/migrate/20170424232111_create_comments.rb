class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :post, foreign_key: true
      t.belongs_to :account, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
