module Visible
	extend ActiveSupport::Concern

	VALID_STATUSES = ['active', 'paused', 'archived']

	included do
		validates :status, inclusion: { in: VALID_STATUSES }
	end

	class_methods do
		def active_count
			where(status: 'active').count
		end
	end


	def archived?
		status == 'archived'
	end
end
