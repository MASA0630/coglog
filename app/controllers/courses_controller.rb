class CoursesController < ApplicationController

  def index
    @courses = Course.page(params[:page]).per(6).order('created_at DESC')
  end

  def new
    @course = Course.new
  end

  def show
    @course = Course.find(params[:id])
    @pref = JpPrefecture::Prefecture.find(@course.prefecture_code)
  end

  def create
    binding.pry
    Course.create(course_params)
  end

  def destroy
    course = Course.find(params[:id])
    course.destroy if course.user_id == current_user.id
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    course.update(course_params) if course.user_id == current_user.id
  end

  private
  def course_params
    post_hash = params.require(:post).permit(ride_theme_ids: [], bike_type_ids: [] ).merge(user_id: current_user.id)
    params.require(:course).permit(:title, :image, :text, :prefecture_code, :physical_level, :updown, ride_theme_ids: [], bike_type_ids: [] ).merge(post_hash)
  end

end
