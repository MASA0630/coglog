class AddPrefectureCodeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :prefecture_code, :string
  end
end
