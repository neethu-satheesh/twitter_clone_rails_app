module Mutations
  class CreateUserMutation < BaseMutation
    field :user, Types::UserType, null: false

    argument :params, Types::Input::CreateUserInputType, required: true

    def resolve(params:)
      user_params = Hash params

      begin
        user = User.create!(user_params)

        { user: user }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end
