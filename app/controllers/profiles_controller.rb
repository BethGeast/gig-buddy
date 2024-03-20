class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]
  def show
    authorize @profile
  end

  def new
    @profile = Profile.new
    authorize @profile
  end

  def create
    @profile = Profile.new(profile_strong_params)
    @profile.user = current_user
    authorize @profile
    if @profile.save
      redirect_to root_path, notice: 'New profile successfully created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @profile
  end

  def update
    authorize @profile
    @profile.update(profile_strong_params)
    redirect_to root_path, notice: 'Profile updated!'
  end

  def destroy
    authorize @profile
    @profile.destroy
    redirect_to root_path, notice: 'Profile deleted'
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_strong_params
    params.require(:profile).permit(:name, :age, :location, :pronouns, :user_id)
  end
end
