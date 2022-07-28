class ProfilesController < ApplicationController
  def create
    profile = Profile.create

    redirect_to profile_profile_step_path(profile, :place)
  end

  def show
    @profile = Profile.find(params[:id])
  end
end
