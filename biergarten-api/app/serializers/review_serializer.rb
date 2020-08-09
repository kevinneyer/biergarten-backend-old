class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :beer_id, :user_id
end
