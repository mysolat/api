class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :update, :destroy]

  respond_to :json

  def index
    @zones = Zone.all
    respond_with(@zones)
  end

  def show
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
