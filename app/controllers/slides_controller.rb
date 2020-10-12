class SlidesController < ApplicationController
  before_action :find_slide, only: [:show, :edit, :update, :destroy]
  before_action :find_project, only: [:new, :create]
  def index
    @slides = Slide.all
  end

  def show
  end

  def new
    @slide = Slide.new
  end

  def create
    @slide = Slide.new(slide_params)
    @slide.project_id = @project.id
    if @slide.save
      @slide.save!
      redirect_to @project
    else
      render 'new'
    end
  end

  def edit
    # code
  end

  def update
    @slide.update(slide_params)
    redirect_to @slide
  end

  def destroy
    @slide.destroy
    redirect_to slides_path
  end

  private

  def slide_params
    params.require(:slide).permit(:timestamp)
  end

  def find_slide
    @slide = Slide.find(params[:id])
  end

  def find_project
    @project = Project.find(params[:project_id])
  end
end
