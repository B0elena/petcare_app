class ManagementsController < ApplicationController
  def create
    management = Management.create(management_params)
    redirect_to pet_path(management.pet.id)
  end

  private
  def management_params
    params.require(:management).permit(:weight, :food, :to_day).merge(pet_id: params[:pet_id])
  end
end
