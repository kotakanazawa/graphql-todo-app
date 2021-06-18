module Mutations
  class UpdateTask < GraphQL::Schema::Mutation
    argument(:id, ID, required: true)
    argument(:completed, Boolean, required: true)
    argument(:title, String, required: false)
    argument(:note, String, required: false)

    type Types::TaskType

    def resolve(id: nil, completed: nil, title: nil, note: nil)
      task = Task.find(id)
      task.completed = completed
      task.title = title if title
      task.note = note if note
      task.tap(&:save!)
    end
  end
end
