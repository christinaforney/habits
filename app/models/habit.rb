class Habit < ApplicationRecord
	has_many :activities

	validates :title, presence: true
	validates :days, presence: true
end
