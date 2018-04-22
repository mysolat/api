require "administrate/base_dashboard"

class ZoneDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    state: Field::BelongsTo,
    locations: Field::HasMany,
    timetables: Field::HasMany,
    id: Field::Number,
    code: Field::String,
    remarks: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :state,
    :locations,
    :timetables,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :state,
    :locations,
    :timetables,
    :id,
    :code,
    :remarks,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :state,
    :locations,
    :timetables,
    :code,
    :remarks,
  ].freeze

  # Overwrite this method to customize how zones are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(zone)
  #   "Zone ##{zone.id}"
  # end
end
