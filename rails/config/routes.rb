Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  namespace :api do
    namespace :v1 do
      get "todo", to: "todo#index"
      mount_devise_token_auth_for "User", at: "auth"
    end
  end
end
