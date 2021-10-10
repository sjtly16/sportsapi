class Api::V1::MatchStatController < ApplicationController
    def show
        match = Match.find(params[:id])
        match_id = match.id
        match_stat = MatchStat.find(match_id)

        render json: {match: match, match_stat:match_stat}
    end
end
