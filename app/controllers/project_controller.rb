class ProjectController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destory]
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
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = 'Object successfully created'
      redirect_to @project
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
