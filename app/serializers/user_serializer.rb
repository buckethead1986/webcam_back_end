class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :video_files
end
