module Queries
    class FetchUsers < Queries::BaseQuery
      description 'Fetch Users'
      type [Types::UserType], null: false

      argument :first_name, String, required: false
      argument :last_name, String, required: false
  
      def resolve(params = fetch_arguments)
        User.all.fetch_by_first_name(params[:first_name]).fetch_by_last_name(params[:last_name])
      end

      def fetch_arguments
        { first_name: nil, last_name: nil }
      end
    end
  end