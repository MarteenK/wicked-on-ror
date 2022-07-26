# app/controllers/profile_steps_controller.rb

class ProfileStepsController < ApplicationController
  include Wicked::Wizard

  steps :place, :price, :extras

  def show
    render_wizard
  end
end
