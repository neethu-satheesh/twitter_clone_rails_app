module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :handler, String, null: false
    field :tweets, [Types::TweetType], null: false
  end
end
