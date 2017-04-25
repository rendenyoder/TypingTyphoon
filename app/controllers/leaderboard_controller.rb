class LeaderboardController < ApplicationController
  def user_results
  	@counter = 0
  	@user_scores = Score.where(:user_id => current_user.id)
  	@user_scores = @user_scores.sort_by{|score| score.points}
  end

  def top_results
  	@counter = 0
  	@user_scores = Score.all
  	@user_scores = @user_scores.sort_by{|score| score.points}
  end
end
