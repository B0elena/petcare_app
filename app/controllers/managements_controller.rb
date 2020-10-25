class ManagementsController < ApplicationController
  def create
    management = Management.new(management_params)
    if management.save
      redirect_to pet_path(management.pet.id)
    else
      redirect_to pet_path(management.pet.id)
    end
  end

  private
  def management_params
    params.require(:management).permit(:weight, :food, :to_day).merge(pet_id: params[:pet_id])
  end
end
