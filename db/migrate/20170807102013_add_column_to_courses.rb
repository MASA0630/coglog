class AddColumnToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :physical_level, :integer
    add_column :courses, :updown, :integer
  end
end
