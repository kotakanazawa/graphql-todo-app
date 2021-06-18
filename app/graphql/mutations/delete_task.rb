module Mutations
  class DeleteTask < GraphQL::Schema::Mutation
    argument(:id, ID, required: true)

    class DeleteResultType < Types::BaseObject
      field :deleted, Boolean, null: false
    end

    type DeleteResultType

    def resolve(id: nil)
      result = Task.find(id).destroy
      { deleted: result }
    end
  end
end
