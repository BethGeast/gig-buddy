class SwiperController < ApplicationController
  def index
    @profile = current_user.profile
    @profiles = Profile.all - [@profile]
    @my_languages = @profile.languages
    @my_artists = @profile.artists
    @profiles.select! do |match_profile|
      @profile.can_be_matched?(match_profile, @my_languages, @my_artists)
    end
  end
end
