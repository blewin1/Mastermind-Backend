class GameStatsController < ApplicationController
  before_action :set_game_stat, only: [:show, :update, :destroy]

  # GET /game_stats
  def index
    @game_stats = GameStat.all

    render json: @game_stats
  end

  # GET /game_stats/1
  def show
    render json: @game_stat
  end

  # POST /game_stats
  def create
    @game_stat = GameStat.new(game_stat_params)

    if @game_stat.save
      render json: { game_stat: @game_stat, status: 201}, status: :created
    else
      render json: @game_stat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_stats/1
  def update
    if @game_stat.update(game_stat_params)
      render json: {game_stat: @game_stat, status: 200}
    else
      render json: @game_stat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_stats/1
  def destroy
    @game_stat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_stat
      @game_stat = GameStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_stat_params
      params.require(:game_stat).permit(:mode, :wins, :losses, :avg_rows, :least_rows, :user_id)
    end
end
