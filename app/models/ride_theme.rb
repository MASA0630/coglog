class RideTheme < ActiveRecord::Base

    has_many :course_ride_themes, dependent: :destroy
    has_many :courses, :through => :course_ride_themes

end
