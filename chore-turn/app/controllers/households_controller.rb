class HouseholdsController < ApplicationController
  def index
    @households = Household.all
  end

  def show
    @household = Household.find(params[:id])
  end

  def new
    @household = Household.new
  end

  def edit
    @household = Household.find(params[:id])
  end

  def create
    @household = Household.new(household_params)
    if @household.save
      redirect_to @household
    else
      render 'new'
    end
  end

  def update
    @household = Household.find(params[:id])
    if @household.update(household_params)
      redirect_to @household
    else
      render 'edit'
    end
  end

  def destroy
  @household = Household.find(params[:id])
  @household.destroy

  redirect_to households_path
end

  private
  def household_params
    params.require(:household).permit(:id, :name, :home_address)
  end
end
