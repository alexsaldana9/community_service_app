class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user

  geocoded_by :address_for_geocode #, :latitude  => :lat, :longitude => :lon # ActiveRecord
  after_validation :geocode


  def to_s
    return "Event: #{name}, address: #{address_for_geocode}, (#{latitude}, #{longitude})"
  end

  def address_for_geocode
    return street_address + " " + city + " " + state + " " + zipcode.to_s
  end
end
