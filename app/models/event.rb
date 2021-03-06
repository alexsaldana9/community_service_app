class Event < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :users
  belongs_to :user

  geocoded_by :address_for_geocode #, :latitude  => :lat, :longitude => :lon # ActiveRecord
  after_validation :geocode

  has_attached_file :event_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :event_image, content_type: /\Aimage\/.*\z/

  def to_s
    return "Event: #{name}, address: #{address_for_geocode}, (#{latitude}, #{longitude}), #{category_id}"
  end

  def address_for_geocode
    return (street_address + ", " + city + ", " + state + " " + zipcode.to_s).to_s
  end
end
