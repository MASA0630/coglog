class CreateBikeTypes < ActiveRecord::Migration
  def change
    create_table :bike_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
