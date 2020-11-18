module Types
    module Input
      class CreateTweetInputType < Types::BaseInputObject
        argument :text, String, required: true
        argument :user_id, ID, required: true
      end
    end
  end