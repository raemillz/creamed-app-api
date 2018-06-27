class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :base, :likes
end
