class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :beer
  
  def person
    {user_id: self.object.user.id, 
     user_name: self.object.user.username}
  end 

  def drink
    {beer_id: self.object.beer.id, 
      beer_name: self.object.beer.name}
  end

end
