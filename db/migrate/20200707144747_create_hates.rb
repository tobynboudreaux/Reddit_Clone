class CreateHates < ActiveRecord::Migration[6.0]
  def change
    create_table :hates do |t|
      t.integer :upvote_id
      t.integer :downvote_id

      t.timestamps
    end
  end
end
