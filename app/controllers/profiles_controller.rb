class ProfilesController < ApplicationController
  def create
    profile = Profile.create

    redirect_to profile_profile_step_path(profile, :place)
  end
end
