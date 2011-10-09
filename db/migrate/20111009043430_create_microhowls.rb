class CreateMicrohowls < ActiveRecord::Migration
  def self.up
    create_table :microhowls do |t|
      t.string :content
      t.integer :werewolf_id

      t.timestamps
    end
  end

  def self.down
    drop_table :microhowls
  end
end
