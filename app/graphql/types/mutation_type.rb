module Types
  class MutationType < Types::BaseObject
    field :create_user_mutation, mutation: Mutations::CreateUserMutation
    field :create_tweet_mutation, mutation: Mutations::CreateTweetMutation
  end
end
