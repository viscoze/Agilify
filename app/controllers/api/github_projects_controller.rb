class Api::GithubProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_github

  def projects
    repos = @github.repos.list user: current_user.nickname
    render json: repos
  end

  def selected_projects
  end

  def commits
  end

  def create
    github_projects = github_projects_params
    github_projects.each do |project_data|
       github_project = current_user.github_projects.build(project_data)

       if github_project.save
         render status: 200, json: {
           message: "Project was saved successfuly.",
           isCreated: true,
           github_project: github_project,
         }.to_json
       else
         render status: 422, json: {
           message: "Project wasn't saved.",
           isCreated: false,
           errors: github_project.errors
         }.to_json
      end
    end
  end

  def destroy # delete project
  end

  private

  def set_github
    @github = Github.new oauth_token: current_user.token
  end

  def github_projects_params
    params.require(:github_projects).permit(:name, :url)
  end
end
