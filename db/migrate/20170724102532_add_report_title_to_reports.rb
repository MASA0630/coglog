class AddReportTitleToReports < ActiveRecord::Migration
  def change
    add_column :reports, :report_title, :text
  end
end
