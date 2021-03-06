class PlayersController < ApplicationController
  def index
    @players = Player.order("country ASC")
  end

  def show
    @player = Player.find(params[:id])
    @performances = @player.performances.order("created_at DESC")
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])

    if @player.save
      redirect_to players_path
    else
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])

    if @player.update_attributes(params[:player])
      redirect_to players_path
    else
      render :edit
    end
  end

  def destroy
    @player = Player.find(params[:id])

    if @player.destroy
      redirect_to players_path
    else
      render :show
    end
  end
end
