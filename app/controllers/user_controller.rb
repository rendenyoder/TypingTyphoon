class UserController < ApplicationController
  def profile
  end

  def analytics
  	@avg_wpm = 0;
  	@avg_accr = 0;
  	@num_of_tests = 0;

  	@user_scores = Score.where(:user_id => current_user.id)
  	@user_scores[0..99].each do |score|
  		@num_of_tests = @num_of_tests + 1
  		@avg_wpm = @avg_wpm + score.wpm
  		@avg_accr = @avg_accr + score.accuracy
  	end
  	if @num_of_tests != 0
  		@avg_wpm = @avg_wpm / @num_of_tests
  		@avg_accr = @avg_accr / @num_of_tests
  	end
  end
end
