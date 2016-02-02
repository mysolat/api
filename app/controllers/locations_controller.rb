class LocationsController < ApplicationController
  def index
    @locations = PrayerTimeService.locations
    render json: @locations
  end

  def show
    zon = params[:id].upcase
    @location = PrayerTimeService.locations.select {|k,v| k[:kod] == zon}.first rescue "unknown"
    @prayer_times = PrayerTimeService.new({
      year: params[:year],
      month: params[:month],
      zone: zon
    }).fetch
    render json: @prayer_times
  end

end

