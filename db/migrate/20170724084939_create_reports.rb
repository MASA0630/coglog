class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string     :name
      t.text       :image
      t.text       :text
      t.timestamps
    end
  end
end