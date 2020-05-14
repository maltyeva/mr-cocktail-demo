class CocktailsController < ApplicationController
  def new
    #<Cocktail:0x00007f8125ce0768 id: nil, name: nil, created_at: nil, updated_at: nil>
    @cocktail = Cocktail.new
  end

  def create
    #<Cocktail:0x00007f8125ce0768 id: nil, name: "Aperol Spritz", created_at: nil, updated_at: nil>
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render 'new'
    end
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    # @cocktail = Cocktail.find(1)
    @cocktail = Cocktail.find(params[:id])
  end


  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
