class ChoresController < ApplicationController
  def index
    @chores = Chore.all
  end

  def show
    @chore = Chore.find(params[:id])
  end

  def new
    @chore = Chore.new
  end

  def edit
    @chore = Chore.find(params[:id])
  end

  def create
    @chore = Chore.new(chore_params)
    if @chore.save
      redirect_to @chore
    else
      render 'new'
    end
  end

  def update
    @chore = Chore.find(params[:id])
    if @chore.update(chore_params)
      redirect_to @chore
    else
      render 'edit'
    end
  end

  def destroy
  @chore = Chore.find(params[:id])
  @chore.destroy

  redirect_to chores_path
end

  private
  def chore_params
    params.require(:chore).permit(:id, :name, :duration, :status, :date, :household_id)
  end
end
