class Api::V1::MatchesController < ApplicationController
    def index
        render json: Match.find(params[:date])
    end

    def show
        match = Match.find(params[:id])
        match_id = match.id
        match_participants = MatchParticipant.find(match_id)
        host_team_id = match_participants.host_team_id
        away_team_id = match_participants.away_team_id
        host_team = Team.find(host_team_id)
        away_team = Team.find(away_team_id)

        render json: {match: match, host_team: host_team, away_team: away_team}
    end
end
