class PetsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    # @tweets = Tweet.all
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
