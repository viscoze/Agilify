class Api::GithubProjectsController < ApplicationController
  before_action :authenticate_user!

  def index # get list of projects
    render component: 'ProjectContainer'
  end

  def create  # add project
  end

  def destroy # delete project
  end

  private

  def project_params
    params.require(:github_project)
  end
end
