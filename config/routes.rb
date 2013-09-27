FlashCard::Application.routes.draw do
  get "cards/create"
  get "cards/destroy"
  resources :decks do
    resources :cards
  end
end