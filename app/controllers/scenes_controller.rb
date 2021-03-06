class ScenesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_scene, only: [:show, :edit, :update, :destroy, :show_json]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

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
    puts params
  end

  def update
    if @scene.update(scene_params)
      puts "scene updated"
    else
      puts "scene update failure"
    end
  end

  def index
    @p = Project.find(params["project_id"])
    @scenes = @p.scenes
  end

  def show
  end

  def show_json
  end

  def destroy
    @scene.decisions.each do |d|
      d.destroy
    end
    @scene.destroy
  end

  private
  def set_scene
    @scene = Scene.find(params[:id])
  end

  def scene_params
    params.require(:scene).permit(:content, :project_id, :summary, :editor_id, :p1, :p2)
  end
end
