class ProjectSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :status, :owner_id
end
