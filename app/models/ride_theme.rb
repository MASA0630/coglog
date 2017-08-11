class RideTheme < ActiveRecord::Base

    has_many :course__ride_themes, dependent: :destroy
    has_many :courses, :through => :course__ride_themes

end
