class TweetsController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.subscribe(user_params)
    respond_to do |format|
      if @user
        format.html { redirect_to tweet_path(id: @user.name), notice: 'User subscribed.' }
        format.json { render json: @user, status: :created }
      else
        format.html { redirect_to tweets_path }
        format.json { render status: :unprocessable_entity }
      end
    end
  end

  def show
    @user = User.where(name: params[:id]).first
    respond_to do |format|
      if @user
        @tweets = Tweet.for_user(@user).per(15).page(params[:page])
        format.json { render json: @user, status: :created }
      else
        format.html { redirect_to tweets_path }
        format.json { render json: {error: 'user not found'}, status: :unprocessable_entity }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end
end
