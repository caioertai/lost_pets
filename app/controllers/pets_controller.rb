class PetsController < ApplicationController
  before_action :set_pet, only: %w[show edit update destroy]

  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to @pet
    # redirect_to pet_path(@pet)
    # redirect_to pet_path(@pet.id)
  end

  def edit; end

  def update
    @pet.update(pet_params)
    redirect_to @pet
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
