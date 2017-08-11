class CreateRideThemes < ActiveRecord::Migration
  def change
    create_table :ride_themes do |t|
      t.string :name
      t.timestamps
    end
  end
end
