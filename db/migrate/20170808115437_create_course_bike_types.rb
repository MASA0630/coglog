class CreateCourseBikeTypes < ActiveRecord::Migration
  def change
    create_table :course_bike_types do |t|
      t.references :course, index: true, foreign_key: true
      t.references :bike_type, index: true, foreign_key: true
      t.timestamps
    end
  end
end
