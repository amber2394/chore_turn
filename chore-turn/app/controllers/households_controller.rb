class HouseholdsController < ApplicationController
  def show
    @household = Household.find(params[:id])
  end

  def new

  end

  def create
    @household = Household.new(household_params)

    @household.save
    redirect_to @household
  end

  private
  def household_params
    params.require(:household).permit(:name, :home_address)
  end
end
