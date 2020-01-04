class CreateKakus < ActiveRecord::Migration[5.1]
  def change
    create_table :kakus do |t|
      t.text :body
      t.string :url
      t.string :sonota
      t.integer :users_id

      t.timestamps
    end
  end
end
