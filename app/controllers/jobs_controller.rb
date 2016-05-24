class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin, only: [:new]

  def index
    @jobs = Job.where(user: current_user)
  end

  def new
    @job = Job.new
  end

  def authenticate_admin
    redirect_to root_path unless current_user.admin?
  end
end
