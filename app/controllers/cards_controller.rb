class CardsController < ApplicationController
  def create                                            
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.build(card_params)
    
    if @card.description.empty?
      @card.description = get_definition
    end
    @card.save
    redirect_to @deck
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to @card.deck
  end

  def card_params
    params.require(:card).permit(:title, :description, :deck_id)
  end

  def get_definition
    Wordnik.word.get_definitions(params[:title])
  end

end
