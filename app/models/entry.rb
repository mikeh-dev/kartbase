class Entry < ApplicationRecord

  validates :track, :date, :run, presence: true

end
