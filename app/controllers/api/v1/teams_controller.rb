class Api::V1::TeamsController < ApplicationController
    def show
        """Team Stats API"""
        team = Team.find(params[:id])
        team_id = team.id
        team_stats = TeamStat.find(team_id)

        render json: {
            status: "success",
            data: {
                team: team, 
                team_stat: team_stats
            },
            message: "Team Stats"
        }
    end
end
