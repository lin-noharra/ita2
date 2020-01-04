class CreateHatus < ActiveRecord::Migration[5.1]
  def change
    create_table :hatus do |t|
      t.text :body
      t.string :url
      t.string :sonota
      t.integer :user_id

      t.timestamps
    end
  end
end
