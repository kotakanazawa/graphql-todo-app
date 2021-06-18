module Mutations
  class CreatePost < BaseMutation
    field :post, Types::PostType, null: true
    field :result, Boolean, null: true

    argument :title, String, required: false
    argument :description, String, required: false

    def resolve(title: nil, description: nil)
      post = Post.create(title: title, description: description)
      {
        post: post,
        result: post.errors.blank?
      }
    end
  end
end
