class Entry < ApplicationRecord

  validates :track, :date, :time, :run, :bestlap, presence: true

end
