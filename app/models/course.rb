class Course < ActiveRecord::Base

# モデル間アソシエーション定義---------------------------------------
  belongs_to :user

  has_many :course__ride_themes, dependent: :destroy
  has_many :ride_themes, :through => :course__ride_themes
  accepts_nested_attributes_for :course__ride_themes, allow_destroy: true

  has_many :course__bike_types, dependent: :destroy
  has_many :bike_types, :through => :course__bike_types
  accepts_nested_attributes_for :course__bike_types, allow_destroy: true
# ----------------------------------ここまで


# バリデーション定義--------------------------------------
  validates :title, presence: true, uniqueness: true
  validates :image, :text, :prefecture_code, :physical_level, :updown, presence: true
  validates :ride_theme_ids, presence: true
  validates :bike_type_ids, presence: true
# --------------------------------------ここまで

# その他-----------------------------------------------
  include JpPrefecture
  jp_prefecture :prefecture_code
# -----------------------------------------------ここまで


# 中間テーブルへの同時データ追加----------------------------
  # after_create :create_course_ride_theme

  # def course_ride_theme(course_id)
  #   Course.find_by(user_id: user_id, course_id: id)
  # end

  # private
  # def create_course_ride_theme
  #   self.course_ride_theme = Course_ride_theme.create(ride_theme_id: ride_theme_id, updated_at: updated_at)
  # end
#----------------------------ここまで


end

