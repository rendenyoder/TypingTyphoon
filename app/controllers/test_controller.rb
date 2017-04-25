class TestController < ApplicationController
  def index
  	@user_score = Score.new
  end
end
