Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "todo", to: "todo#index"
    end
  end
end
