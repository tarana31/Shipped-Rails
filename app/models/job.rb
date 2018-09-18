class Job < ApplicationRecord
    belongs_to :user
    has_many :schedules
    has_many :boats, :through => :schedules
end
