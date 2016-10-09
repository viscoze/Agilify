class MainController < ApplicationController
  def index
    redirect_to '/projects' if user_signed_in?
  end
end
