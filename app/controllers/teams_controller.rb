class TeamsController < ApplicationController
  def index
    @teams = Team.order("founded_at asc")
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
