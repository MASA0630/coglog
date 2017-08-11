class AddAreaToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :area, :string
  end
end
