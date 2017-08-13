class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

# その他---------------------------------------
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
# ----------------------------------ここまで

# モデル間アソシエーション定義---------------------------------------
  has_many :courses

  has_many :images
  accepts_nested_attributes_for :images
# ----------------------------------ここまで

# バリデーション定義--------------------------------------
  validates :nickname, presence: true, uniqueness: true
# ----------------------------------ここまで

end
