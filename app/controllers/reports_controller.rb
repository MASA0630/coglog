class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end

  def new
  end

  def create
    Report.create(report_params)
  end

  private
  def report_params
    params.permit(:report_title, :name, :image, :text)
  end

end
