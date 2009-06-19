class CreateWrits < ActiveRecord::Migration
  def self.up
    create_table :writs do |t|
      t.text :writ
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :writs
  end
end
