class SelectedLanguagesController < ApplicationController
  def new
    @selected_language = SelectedLanguage.new
    authorize @selected_language
  end

  def create
    authorize @selected_language
    @language_ids = selected_language_params[:language]
    @profile = current_user.profile
    @language_ids.each do |language_id|
      SelectedLanguage.create(language_id: language_id, profile: @profile)
    end
    redirect_to root_path
  end

  private

  def selected_language_params
    params.require(:selected_language).permit(language: [])
  end
end
