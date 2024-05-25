class ActivitiesController < ApplicationController
	def create
		@habit = Habit.find(params[:habit_id])
		@activity = @habit.activities.create(activity_params)
		redirect_to habit_path(@habit)
	end

	def destroy
		@habit = Habit.find(params[:habit_id])
		@activity = @habit.activities.find(params[:id])
		@activity.destory
		redirect_to habit_path(@habit), status: :see_other
	end

	private
		def activity_params
			params.require(:activity).permit(:repetitions, :note)
		end
end
