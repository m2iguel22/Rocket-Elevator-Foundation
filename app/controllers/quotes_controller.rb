class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end

  def create
    quote_params = params.require(:quote).permit(:type_of_building)
    quote = Quote.create(quote_params)
    redirect_to quotes_new_path
  end

  
  
end
