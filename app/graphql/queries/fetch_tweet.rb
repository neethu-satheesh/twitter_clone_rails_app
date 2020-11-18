module Queries
    class FetchTweet < Queries::BaseQuery
      description 'Fetch Tweet'
      type Types::TweetType, null: false

      argument :id, ID, required: false
  
      def resolve(id:)
        Tweet.find(id)
      end
    end
  end