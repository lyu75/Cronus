class ScenesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_scene, only: [:show, :edit, :update, :destroy]

  def new
    @scene = Scene.new
  end

  def create
    @scene = Scene.create(scene_params)
    if @scene.save
      render :show
    else
      render :new
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
    params.require(:scene).permit(:content, :project_id, :user_id)
  end
end