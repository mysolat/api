class Zone < ApplicationRecord
  belongs_to :state

  has_many :locations
  has_many :timetables

  def to_param
    code
  end

  def self.find(input)
    if input.is_a?(Integer)
      super
    else
      find_by(code: input.upcase)
    end
  end

end
