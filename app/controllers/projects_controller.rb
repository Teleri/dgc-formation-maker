class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def show
    # code
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      @project.save!
      redirect_to @project
    else
      render 'new'
    end
  end

  def edit
    # code
  end

  def update
    @project.update(project_params)
    redirect_to @project
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
