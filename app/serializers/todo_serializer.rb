class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :importance, :user
end
