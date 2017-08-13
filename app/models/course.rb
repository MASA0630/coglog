class Course < ActiveRecord::Base

# モデル間アソシエーション定義---------------------------------------
  belongs_to :user

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  has_many :course_ride_themes, dependent: :destroy
  has_many :ride_themes, :through => :course_ride_themes
  accepts_nested_attributes_for :course_ride_themes, allow_destroy: true

  has_many :course_bike_types, dependent: :destroy
  has_many :bike_types, :through => :course_bike_types
  accepts_nested_attributes_for :course_bike_types, allow_destroy: true
# ----------------------------------ここまで

# バリデーション定義--------------------------------------
  validates :title, presence: true, uniqueness: true
  validates :images, :text, :prefecture_code, :physical_level, :updown, :ride_theme_ids, :bike_type_ids, presence: true
# --------------------------------------ここまで

# その他-----------------------------------------------
  include JpPrefecture
  jp_prefecture :prefecture_code
# -----------------------------------------------ここまで

end

