class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :beer_id
end
