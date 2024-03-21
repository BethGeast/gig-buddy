class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]
  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_strong_params)
    @profile.user = current_user
    if @profile.save
      redirect_to root_path, notice: 'New profile successfully created!'
      @language_ids = profile_strong_params[:language_ids]
      @language_ids.each { |id| SelectedLanguage.create(profile: @profile, language_id: id) }
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
    params.require(:profile).permit(:name, :age, :location, :pronouns, :user_id, language_ids: [], photos: [])
  end
end
