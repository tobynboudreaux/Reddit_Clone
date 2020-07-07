class CreateBipolars < ActiveRecord::Migration[6.0]
  def change
    create_table :bipolars do |t|
      t.integer :member_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
