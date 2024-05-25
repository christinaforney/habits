class Habit < ApplicationRecord
	validates :title, presence: true
	validates :days, presence: true
end
