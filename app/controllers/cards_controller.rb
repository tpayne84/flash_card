class CardsController < ApplicationController
  def create
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.build(params[:card])
    @card.save
    redirect_to @deck
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to @card.deck
  end
end
