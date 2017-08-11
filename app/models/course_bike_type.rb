class CourseBikeType < ActiveRecord::Base
  belongs_to :course
  belongs_to :bike_type
end
