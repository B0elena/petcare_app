class PetsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end 

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @management = Management.new
    #@managements = @pet.managements.includes(:user)
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end

  def pet_params
    params.require(:pet).permit(:petname, :sex_id, :kind, :birthday, :image, :date).merge(user_id: current_user.id)
  end
end
