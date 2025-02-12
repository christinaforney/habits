class HabitsController < ApplicationController
  http_basic_authenticate_with name: "christina", password: "comet", except: [:index, :show]

  def index
    @habits = Habit.all
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)

    if @habit.save
      redirect_to @habit
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @habit = Habit.find(params[:id])
  end

  def update
    @habit = Habit.find(params[:id])

    if @habit.update(habit_params)
      redirect_to @habit
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def habit_params
      params.require(:habit).permit(:title, :days, :status)
    end
end
