class Writ < ActiveRecord::Base
  belongs_to :user
  validates_length_of :writ, :within => 1..249,
    :too_long => "- Your writ can only be {{count}} characters long",
    :too_short => "- Your writ must be at least {{count}} character long"
end
