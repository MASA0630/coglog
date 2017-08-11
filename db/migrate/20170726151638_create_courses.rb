class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text        :title
      t.string      :nickname
      t.text        :text
      t.text        :image
      t.timestamps
    end
  end
end
