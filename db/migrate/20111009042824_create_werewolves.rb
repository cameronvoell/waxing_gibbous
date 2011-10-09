class CreateWerewolves < ActiveRecord::Migration
  def self.up
    create_table :werewolves do |t|
      t.string :name
      t.string :color
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :werewolves
  end
end
