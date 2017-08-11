class RemoveAreaFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :area, :string
  end
end
