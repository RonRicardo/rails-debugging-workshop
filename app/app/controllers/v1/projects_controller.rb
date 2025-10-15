module V1
  class ProjectsController < ApplicationController
    def index
      # BUGS:
      # - reads page as a flat param (Hash#to_i -> 0)
      # - wrong key for size
      page_number = (params[:page] || 1).to_i
      page_size   = (params[:size] || 20).to_i
      scope = Project.order(id: :asc).limit(page_size).offset((page_number - 1) * page_size)
      render json: ProjectSerializer.new(scope).serializable_hash
    end

    def create
      project = Project.new(project_params)
      if project.save
        render json: ProjectSerializer.new(project).serializable_hash, status: :created
      else
        render json: { errors: project.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      project = Project.find(params[:id])
      if project.update(project_params)
        render json: ProjectSerializer.new(project).serializable_hash
      else
        render json: { errors: project.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private
    def project_params
      attrs = params.require(:data).require(:attributes)
      attrs.permit(:name, :status, :owner_id)
    end
  end
end
