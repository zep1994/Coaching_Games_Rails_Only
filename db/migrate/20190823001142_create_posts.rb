class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :time
      t.integer :cost
      t.string :coach

      t.timestamps
    end
  end
end
