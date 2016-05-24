class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin, only: [:new]

  def index
    @jobs = Job.where(user: current_user)
  end

  def new
    @users = User.order(:name)
    @job = Job.new
  end

end
