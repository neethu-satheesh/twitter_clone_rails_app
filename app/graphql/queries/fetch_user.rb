module Queries
    class FetchUser < Queries::BaseQuery
      description 'Fetch User'
      type Types::UserType, null: false
      
      argument :id, ID, required: false
      argument :handler, String, required: false
      
      def resolve(params = fetch_arguments)
        if params[:id].present?
            User.find(params[:id])
        elsif params[:handler].present?
            User.find_by_handler(params[:handler])
        end
      end

      def fetch_arguments
        { id: nil, handler: nil}
      end
    end
  end