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
end
