class DropTableCourseThemes < ActiveRecord::Migration
  def change
    drop_table :course_themes
  end
end
