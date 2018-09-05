class StatesController < ApplicationController
  before_action :set_state, only: [:show, :update, :destroy]

  def index
    @states = State.all
    respond_with(@states)
  end

  def show
    respond_with(@state)
  end

  def create
    @state = State.new(state_params)
    @state.save
    respond_with(@state)
  end

  def update
    @state.update(state_params)
    respond_with(@state)
  end

  def destroy
    @state.destroy
    respond_with(@state)
  end

  private
    def set_state
      @state = State.find(params[:id])
    end

    def state_params
      params.require(:state).permit(:name, :country_id)
    end
end
