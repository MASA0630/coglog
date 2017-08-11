class CreateCourseRideThemes < ActiveRecord::Migration
  def change
    create_table :course_ride_themes do |t|
      t.references :course, index: true, foreign_key: true
      t.references :ride_theme, index: true, foreign_key: true
      t.timestamps
    end
  end
end
