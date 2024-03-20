class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]
  def show
    @profile.selected_languages = @languages
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_strong_params)
    @profile.selected_languages = @languages
    @profile.user = current_user
    if @profile.save
      redirect_to root_path, notice: 'New profile successfully created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @profile.update(profile_strong_params)
    redirect_to root_path, notice: 'Profile updated!'
  end

  def destroy
    @profile.destroy
    redirect_to root_path, notice: 'Profile deleted'
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_strong_params
    params.require(:profile).permit(:name, :age, :location, :pronouns, :user_id, :selected_languages, photos: [])
  end
end
