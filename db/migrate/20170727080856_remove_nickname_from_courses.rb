class RemoveNicknameFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :nickname, :string
  end
end
