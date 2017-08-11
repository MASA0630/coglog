class CourseRideTheme < ActiveRecord::Base
  belongs_to :course
  belongs_to :ride_theme
end
