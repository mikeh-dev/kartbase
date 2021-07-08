class Entry < ApplicationRecord

  validates :track, :date, :time, :run, :gearing, :prepressure, :rearwidth, :frontwidth, :needleclip, :jet, :airmix, :idle, :rimset, :tyre, :tyreset, :camber, :caster, :toe, :frontride, :rearwidth, :plug, :frontbar, :fuelload, :fuelmix, :condition, :chain, :axle, :enginehour, :tyreage, :waddingage, :gearoilage, :sessiontype, presence: true

end
