FlashCard::Application.routes.draw do
  root to: 'decks#index'

  get "cards/create"
  get "cards/destroy"
  resources :decks do
    resources :cards
  end
end