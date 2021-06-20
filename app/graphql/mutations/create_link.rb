module Mutations
  class CreateLink < BaseMutation
    argument(:url, String, required: true)
    argument(:description, String, required: true)

    # return type from the mutation
    type Types::LinkType

    def resolve(url: nil, description: nil)
      Link.create!(
        url: url,
        description: description
      )
    end
  end
end
