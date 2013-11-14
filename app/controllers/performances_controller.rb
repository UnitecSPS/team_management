class PerformancesController < ApplicationController
  def new
    @player = Player.find(params[:player_id])
  end

  def create
    @player = Player.find(params[:player_id])
    @performance = @player.performances.build(params[:performance])

    if @performance.save
      redirect_to @player
    end
  end

  def show
    @performance = Performance.find(params[:id])
  end

  def edit
     @performance = Performance.find(params[:id])
  end

  def update
    @performance = Performance.find(params[:id])

    if @performance.update_attributes(params[:performance])
      redirect_to @performance.player
    end
  end

  def destroy
    @performance = Performance.find(params[:id])

    if @performance.destroy
      redirect_to @performance.player
    end
  end
end
