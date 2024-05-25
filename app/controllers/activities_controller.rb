class ActivitiesController < ApplicationController
	def create
		@habit = Habit.find(params[:habit_id])
		@activity = @habit.activities.create(activity_params)
		redirect_to habit_path(@habit)
	end

	private
		def activity_params
			params.require(:activity).permit(:repetitions, :note)
		end
end
