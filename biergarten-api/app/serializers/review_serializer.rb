class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :beer, :user, :rating

  def user
    {user_id: self.object.user.id, 
     user_name: self.object.user.username}
  end 

  def beer
    {#beer_id: self.object.beer.id, 
      beer_name: self.object.beer.name}
  end
  
end
