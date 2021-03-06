class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_project, only: [:show, :edit, :update, :destroy, :owner_workspace, :elaborate_scenes, :play]
  before_action :authenticate_user!, only: [:new, :create, :owner_workspace, :elaborate_scenes, :update, :edit, :destroy]

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    @project.user = current_user if current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
  end

  def play
  end

  def owner_workspace
  end

  def elaborate_scenes
  end

  def update
    if @project.update(project_params)
      render :show
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @project.scenes.each do |s|
      s.destroy
    end
    @project.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :user_id, :published)
  end
end
