module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :tasks, resolver: Resolvers::Tasks
    field :posts, resolver: Resolvers::Posts
    field :links, resolver: Resolvers::Links
  end
end
