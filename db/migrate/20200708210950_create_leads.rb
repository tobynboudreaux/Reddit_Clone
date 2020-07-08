class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.integer :leader_id
      t.integer :leadee_id

      t.timestamps
    end
  end
end
