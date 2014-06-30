class CreateCrabs < ActiveRecord::Migration
  def change
    create_table :crabs do |t|

      t.timestamps
    end
  end
end
