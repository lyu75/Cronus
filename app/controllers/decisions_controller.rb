class DecisionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_decision, only: [:update, :destroy]

  def new
  end

  def create
    @decision = Decision.create(decision_params)
    # set_next
    # set_scene
    # @decision.scene = @scene
    # @decision.next = @next
    if @decision.save
      puts "decision created"
    else
      puts "decision creation failure"
    end
  end

  def edit
  end

  def update
    if @decision.update(decision_params)
      puts "updated decision"
    else
      puts "decision update failure"
    end
  end

  def index
  end

  def show
  end

  def destroy
    @decision.destroy
  end

  private
  def set_scene
    @scene = Scene.find(params[:scene_id])
  end
  def set_next
    @next = Scene.find(params[:next_id])
  end
  def set_decision
    @decision = Decision.find(params[:id])
  end
  def decision_params
    params.require(:decision).permit(:description, :scene_id, :previous_editor_id, :next_id, :next_editor_id, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8)
  end

end
