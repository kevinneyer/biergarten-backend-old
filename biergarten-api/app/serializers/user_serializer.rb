class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
  has_many :favorites
  has_many :reviews
end
