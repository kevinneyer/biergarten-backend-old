class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
  has_many :favorites
  has_many :reviews

  def reviews
    self.object.reviews.map do |review|
      {content: review.content,
      beer: review.beer.name}
    end 
  end 

  def favorites
    self.object.favorites.map do |favorite|
      {beer: favorite.beer.name,
      favorite_id: favorite.id}
    end 
  end 

end
