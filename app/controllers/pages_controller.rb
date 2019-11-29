class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = Project.all
  end

  def profile
    @projects = current_user.projects
  end
end
