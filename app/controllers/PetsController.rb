class PetsController < ApplicationController

  def show
    @pet = Pet.find(params[:id])
    @user = @pet.user
  end
  
end