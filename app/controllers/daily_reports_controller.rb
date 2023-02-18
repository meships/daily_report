class DailyReportsController < ApplicationController
  before_action :login_required
  def index
    @daily_reports = current_user.daily_reports
  end

  def new
    @daily_report = DailyReport.new
  end

  def create
    #binding.pry
    @daily_report = current_user.daily_reports.build(daily_report_params)
      if @daily_report.save

        flash[:notice] = "日報を作成しました"
        redirect_to daily_reports_path
      else
        render :new
      end
  end

  def show
  end

  def edit
  end
end
