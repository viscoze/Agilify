class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    render component: 'ProjectsContainer'
  end
end
