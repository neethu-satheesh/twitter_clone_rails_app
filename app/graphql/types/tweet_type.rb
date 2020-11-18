module Types
  class TweetType < Types::BaseObject
    field :id, ID, null: false
    field :text, String, null: false
    field :user, Types::UserType, null: false
  end
end
