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
    @matches = policy_scope(Match)
    @profile = current_user.profile
    @photos = @matches.map do |match|
      (match.profiles - [@profile]).first.photos.first
    end
  end

  def create
    # get profile id of match user and current_user.profile
    @profile = current_user.profile
    @match_profile = Profile.find(params[:profile_id])
    @match = @profile.find_match(@match_profile)
    # if match, match.update where matched = true
    respond_to do |format|
      if @match
        @match.update(matched: true)
        format.html { redirect_to match_path(@match) }
        format.json
      # else create new match with you as 1st profile, them as 2nd and matched = false
      else
        @match = Match.create(first_profile: @profile, second_profile: @match_profile, matched: false)
        format.html { redirect_to match_path(@match) }
        format.json
      end
    end
    authorize @match
  end

  def show
    @match = Match.find(params[:id])
    @profiles = @match.profiles
    @profile = current_user.profile
    @their_profile = (@profiles - [@profile]).first
    @match_profile = (@match.profiles - [@profile]).last
    @message = Message.new
    authorize @match
  # chatroom page
  #   if @matches.matched == true
  #     # puts "You have a match!"
  #   # if matched = true show 'you have matched with user!!'
  #   # else continue swiping through index of potential matches
  #   else
  #     index
  #   end
  end

  def destroy

    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_path, status: :see_other, notice: "Match deleted"
    authorize @match
  end
end
