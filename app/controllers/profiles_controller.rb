class ProfilesController < ApplicationController
  def create
    Profile.create(avatar_url: @content["avatar_url"], body: @content, )
  end

  private
    def profile_params
      params.require(:profile).permit(:avatar_url, :body, :username, :location, :company_name, :number_of_followers, :number_following)
    end
end
