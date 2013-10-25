class PerformancesController < ApplicationController
  def create
    @player = Player.find(params[:player_id])
    @performance = @player.performances.build(params[:performance])

    if @performance.save
      redirect_to @player
    end
  end

  def edit
  end
end
