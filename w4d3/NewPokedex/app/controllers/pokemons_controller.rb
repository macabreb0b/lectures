class PokemonsController < ApplicationController
  
  def index
    @pokemons = Pokemon.all
    
    render 'index'
  end
  
  def water_type_index

    @pokemons = Pokemon.all.where({type_one: 'water'})
    
    render 'index'
  end
  
  def capture

  end
  
  def new
    @pokemon = Pokemon.new
    render 'new'
  end
  
  def create
    @pokemon = Pokemon.new(pokemon_params)
    
    if @pokemon.save
      redirect_to "google.com"
    else
      flash.now[:errors] = @pokemon.errors.full_messages
      render 'new'
    end
  end
  
  def show
    @pokemon = Pokemon.find(params[:id])
    render 'show'
  end
  
  
  def pokemon_params
    params.require(:pokemon).permit(:name, :type_one,
       :type_two, :height, :weight, :gender)
  end
end