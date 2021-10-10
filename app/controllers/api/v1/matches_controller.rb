class Api::V1::MatchesController < ApplicationController
    def index
        """Upcoming Match List API"""
        render json: {
            data: Match.where('date > ?', Date.today), 
            message: "Upcoming Match List",
        }
    end

    def show
        """Match Detail API"""
        match = Match.find(params[:id])
        match_id = match.id
        match_participants = MatchParticipant.find(match_id)
        host_team_id = match_participants.host_team_id
        away_team_id = match_participants.away_team_id
        host_team = Team.find(host_team_id)
        away_team = Team.find(away_team_id)

        render json: {
            data: {
                    match: match, 
                    host_team: host_team, 
                    away_team: away_team
                },
            message: "Match Detail"
        }
    end
end
