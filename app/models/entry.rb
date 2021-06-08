class Entry < ApplicationRecord

  validates :track, :date, :time, :run, presence: true

end
