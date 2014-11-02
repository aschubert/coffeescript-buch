class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :done
end
