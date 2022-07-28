# app/controllers/profile_steps_controller.rb

class ProfileStepsController < ApplicationController
  include Wicked::Wizard

  before_action :profile

  steps :place, :price, :extras

  def show
    render_wizard
  end

  def update
    profile.update(profile_steps_params.merge(step: step))

    render_wizard @profile
  end

  def finish_wizard_path
    profile.complete!

    profile_path(profile)
  end

  private

  def profile
    @profile ||= Profile.find(params[:profile_id])
  end

  def profile_steps_params
    params[:profile].permit(:city, :min_price, :max_price, :garden, :pool, :parking)
  end
end
