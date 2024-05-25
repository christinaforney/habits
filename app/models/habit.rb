class Habit < ApplicationRecord
	include Visible

	has_many :activities, dependent: :destroy

	validates :title, presence: true
	validates :days, presence: true
end
