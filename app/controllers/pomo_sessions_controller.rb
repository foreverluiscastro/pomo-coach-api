class PomoSessionsController < ApplicationController
  # GET /pomo_sessions
  def index
    @pomo_sessions = @current_user.pomo_sessions.all
    render json: @pomo_sessions
  end

  # GET /pomo_sessions/1
  def show
    @pomo_session = PomoSession.find(params[:id])
    render json: @pomo_session
  end

  # POST /pomo_sessions
  def create
    @pomo_session = @current_user.pomo_sessions.create!(pomo_session_params)
    render json: @pomo_session, status: :created
  end

  private
    # Only allow a list of trusted parameters through.
    def pomo_session_params
      params.require(:pomo_session).permit(:session_type, :total_time, :date, :user_id)
    end
end
