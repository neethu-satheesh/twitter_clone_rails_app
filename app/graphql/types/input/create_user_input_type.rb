module Types
    module Input
      class CreateUserInputType < Types::BaseInputObject
        argument :first_name, String, required: true
        argument :last_name, String, required: true
        argument :handler, String, required: true
      end
    end
  end