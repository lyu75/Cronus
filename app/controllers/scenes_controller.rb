class ScenesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_scene, only: [:show, :edit, :update, :destroy]

  def new
    @scene = Scene.new
    @p = Project.find(params["project_id"])
  end

  def create
    @scene = Scene.create(scene_params)
    @p = Project.find(params["project_id"])
    @scene.project = @p
    if @scene.save
      puts "scene created"
      # redirect_to project_owner_work_path(@p)
    else
      puts "scene not created"
      # render :new
    end
  end

  def edit
  end

  def update
  end

  def index
    @scene = Scene.all
  end

  def show
  end

  def destroy
  end

  private
  def set_scene
    @scene = Scene.find(params[:id])
  end

  def scene_params
    params.require(:scene).permit(:content, :project_id, :summary, :editor_id, :p1, :p2)
  end
end
