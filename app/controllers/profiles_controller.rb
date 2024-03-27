class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update]
  skip_before_action :has_profile?, only: %i[new create]

  def show
    @languages = @profile.languages
    @artists = @profile.artists
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
      @language_ids = profile_strong_params[:language_ids]
      @language_ids.each { |id| SelectedLanguage.create(profile: @profile, language_id: id) }
      redirect_to artists_path, notice: 'New profile successfully created!'
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

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_strong_params
    params.require(:profile).permit(:name, :age, :location, :pronouns, :user_id, :bio, language_ids: [], photos: [])
  end
end
