class AstronautsController < ApplicationController
  def new
    @astronaut = Astronaut.new
    render 'new'
  end
  
  def create
    @astronaut = Astronaut.new(astronaut_params)
    
    @astronaut.space_loots.build(space_loot_params)
    #
    # begin
    #   ActiveRecord::Base.transaction do
    #     params[:space_loots].each do |key, loot_value|
    #       l = SpaceLoot.new(name: loot_value[:name])
    #       @astronaut.space_loots << l
    #     end
    #   rescue
    #     flash[:errors] = ["Too many moon rocks!"]
    #
    #   end
    # end
    #
    fail
    if @astronaut.save
      redirect_to astronaut_url(@astronaut)
    else
      if flash[:errors]
        flash[:errors].concat @astronaut.errors.full_messages
      else 
        flash[:errors] = @astronaut.errors.full_messages
      end
      render 'new'
    end
  end
  
  def astronaut_params
    params.require(:astronaut)
        .permit(:name, :email, :visited_planet_ids => [])
  end
  
  def space_loot_params
    params.permit(:space_loots => [:name]).require(:space_loots).values
  end
  
  def edit
    @astronaut = Astronaut.find(params[:id])
    render 'edit'
  end
  
  def update
    @astronaut = Astronaut.find(params[:id])
    fail
    
    if @astronaut.update_attributes(astronaut_params)
      redirect_to 'show'
    else
      flash[:errors] = @astronaut.errors.full_messages
      render 'edit'
    end
  end
end