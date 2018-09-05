class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :update, :destroy]

  def index
    @zones = Zone.all
    respond_with(@zones)
  end

  def show
    @year = params[:year].present? ? params[:year].to_i : Date.today.year
    @month = params[:month].present? ? params[:month].to_i : Date.today.month
    if params[:year].present? and params[:month].present?
      start_date = Date.new(@year, @month, 1)
      end_date = start_date.end_of_month
      @timetables = @zone.timetables.monthly(start_date, end_date)
      UpdaterJob.perform_later(zone: @zone.code, year: @year, month: @month)
    else
      @timetables = @zone.timetables.daily(Date.today)
    end
    respond_with(@zone)
  end

  def create
    @zone = Zone.new(zone_params)
    @zone.save
    respond_with(@zone)
  end

  def update
    @zone.update(zone_params)
    respond_with(@zone)
  end

  def destroy
    @zone.destroy
    respond_with(@zone)
  end

  private
    def set_zone
      @zone = Zone.find(params[:id])
    end

    def zone_params
      params.require(:zone).permit(:code, :state_id, :remarks)
    end
end
