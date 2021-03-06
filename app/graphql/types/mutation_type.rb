module Types
  class MutationType < Types::BaseObject
    field :create_post, mutation: Mutations::CreatePost, null: false
    field :create_task, mutation: Mutations::CreateTask, null: false
    field :update_task, mutation: Mutations::UpdateTask, null: false
    field :delete_task, mutation: Mutations::DeleteTask, null: false
    field :create_link, mutation: Mutations::CreateLink
    field :create_user, mutation: Mutations::CreateUser
  end
end
