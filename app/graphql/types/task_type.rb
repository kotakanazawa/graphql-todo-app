module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :note, String, null: true
    field :completed, Boolean, null: true
  end
end
