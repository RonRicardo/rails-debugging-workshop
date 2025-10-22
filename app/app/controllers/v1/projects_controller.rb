module V1
  class ProjectsController < ApplicationController

    def index
      page_number = params.dig(:page, :number).to_i
      page_number = 1 if page_number <= 0

      page_size = params.dig(:page, :size).to_i
      page_size = 20 if page_size <= 0 || page_size > 100

      scope = Project.order(id: :asc)

      response.set_header("Link", %(<#{next_url}>; rel="next"))

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
