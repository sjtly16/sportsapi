class Api::V1::MatchStatController < ApplicationController
    def show
        """Past Match Stats API"""
        match = Match.find(params[:id])
        match_id = match.id
        match_stat = MatchStat.find(match_id)

        render json: { 
            status: "success",
            data: {
                match: match, 
                match_stat: match_stat
            },
            message: "Match Stats"
        }
    end

    def match_between_team
        first_team_name = params[:first_team]
        second_team_name = params[:second_team]
        puts params
        puts first_team_name
        first_team = Team.find_by(name: first_team_name)

        first_team_id = first_team.id

        second_team = Team.find_by(name: second_team_name)
        second_team_id = second_team.id

        match_hosted_by_first_team = MatchParticipant.where(host_team_id: first_team_id, away_team_id: second_team_id).pluck(:id)

        match_hosted_by_second_team = MatchParticipant.where(host_team_id: second_team_id, away_team_id: first_team_id).pluck(:id)

        required_match_ids = match_hosted_by_first_team + match_hosted_by_second_team

        data = []
        for identity in required_match_ids do
            match_stat = MatchStat.find(identity)
            data.push(match_stat)
        end

        render json: {
            status: "success",
            data: data,
            message: "Matches played between #{first_team_name} and #{second_team_name}"
        }
    end
end
