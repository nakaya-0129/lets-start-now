class AggregatesController < ApplicationController


  def new
   @aggregate = Aggregate.new
  end

  def show
   @aggregate = Aggregate.find(params[:id])
  end

  def create
    @aggregate = Aggregate.new(aggregates_params)
    if @aggregate.save
     redirect_to root_path
  else
    render :new
  end
 end

  private
  def aggregates_params
   params.require(:aggregate).permit(:ability_id,:ability_point,:continuation_data,:action_point,:self_compliment).merge(user_id: current_user.id)
  end
end
