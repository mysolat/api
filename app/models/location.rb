class Location < ApplicationRecord
  belongs_to :state, optional: true
  belongs_to :zone, primary_key: :zone_code, foreign_key: :code, optional: true

  def state_name
    state.name
  end
end
