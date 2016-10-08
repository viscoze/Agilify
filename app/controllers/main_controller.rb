class MainController < ApplicationController
  def index
    redirect_to '/api/projects' if user_signed_in?
  end
end
