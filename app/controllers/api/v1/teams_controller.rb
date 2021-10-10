class Api::V1::TeamsController < ApplicationController
    def show
        team = Team.find(params[:id])
        team_id = team.id
        team_stats = TeamStat.find(team_id)

        render json: {team: team, team_stat: team_stat}
    end
end
