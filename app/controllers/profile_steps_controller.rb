# app/controllers/profile_steps_controller.rb

class ProfileStepsController < ApplicationController
  include Wicked::Wizard

  before_action :profile

  steps :place, :price, :extras

  def show
    render_wizard
  end
end
