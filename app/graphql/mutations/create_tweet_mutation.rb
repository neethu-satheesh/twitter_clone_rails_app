module Mutations
    class CreateTweetMutation < BaseMutation
      field :tweet, Types::TweetType, null: false
  
      argument :params, Types::Input::CreateTweetInputType, required: true
  
      def resolve(params:)
        tweet_params = Hash params
  
        begin
          tweet = Tweet.create!(tweet_params)
  
          { tweet: tweet }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end
  