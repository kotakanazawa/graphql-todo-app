module Resolvers
  class Links < GraphQL::Schema::Resolver
    type [Types::LinkType], null: false

    def resolve
      Link.all
    end
  end
end
