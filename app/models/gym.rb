class Gym < ApplicationRecord
    has_many :reviews ,foreign_key: true
end
