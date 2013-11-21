class AlphasController < ApplicationController

 before_filter :authenticate_user!


  def index
    @version = EssenceVersion.first
    @teams = current_user.teams

    team_id = params[:team_id]
    if team_id
      @team = Team.find(team_id)
    else
      @team = current_user.teams.first
    end


    @checklist_ids_hash = team.checklist_ids_hash

    puts "***"
    puts @checklist_ids_hash
  end

  def simple_index
    index
  end

end
