class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.references :sender, foreign_key: { to_table: :users }
      t.references :receiever, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
