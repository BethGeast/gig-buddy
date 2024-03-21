class MatchesController < ApplicationController

  # want to see all potential matches
  # potential match = user who has at least one of the same artists added to their
  # profile as you && at least one of the same languages added to their profile as you

  # when potential match shows in user's view, a new record is created in DB
  # with both user id's added, default matched value set to false
  # matched value turns to true only if both users click 'yes' on each other
  # otherwise matched remains false

  # also need to search in DB to find whether an existing record already exists for
  # that pair of users
  # need to be able to store whether the other user has already swiped for you
  # so that when user 2 swipes yes, the matched value updates to true

  # if at least one of the users in potential match swipes no, matched value needs
  # to remain false

  # view will show users overview profile page, and button options 'yes' and 'no'
  # this will update to a swiper with javascript later on


  def index
    # show all possible matches
    @profile = current_user.profile
    @profiles = Profile.all - [@profile]
    @my_languages = @profile.languages
    @my_artists = @profile.artists
    @profiles.select do |match_profile|
      @profile.can_be_matched?(match_profile, @my_languages, @my_artists)
    end
  end

  def create
    # get profile id of user and current_user.profile
    # match = find_match
    # if match, match.update where matched = true
    # else create new match with you as 1st profile, them as 2nd and matched = false
  end

  def show
    # if matched = true show 'you have matched with user!!'
    # else continue swiping through index of potential matches
  end

  def update
    # updates record in matches table to matched = true
    # if both users swiped yes
  end
end
