Rails.application.routes.draw do
  # frontend
  root 'welcomes#index'

  # backend
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
end
