class BeerSerializer < ActiveModel::Serializer
  attributes :id, :brewery, :name, :style, :abv, :img_url, :description, :tasting_notes, :likes, :recommended_drinking
  has_many :reviews
  has_many :favorites
end
