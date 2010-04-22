# Eventually this migration needs to be inside the engine and copied to RAILS_ROOT, perhaps using rsync.
class CreateOrders < ActiveRecord::Migration
  def self.up   
    create_table :orders do |t|
      t.string :number
    end
  end

  def self.down
  end
end
