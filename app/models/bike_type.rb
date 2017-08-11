class BikeType < ActiveRecord::Base

  has_many :course__bike_types, dependent: :destroy
  has_many :courses, :through => :course__bike_types

end
