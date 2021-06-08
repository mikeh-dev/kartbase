class Entry < ApplicationRecord

  validates :track, :date, :run, :bestlap, presence: true

end
