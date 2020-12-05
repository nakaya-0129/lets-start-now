class AggregatesController < ApplicationController

  def index
   @aggregates = Aggregate.includes(:user)
  end

  def new
   @aggregate = Aggregate.new
  end

  def show
   @aggregate = Aggregate.find(params[:id])
  end

  def create
    @aggregate = Aggregate.new(aggregates_params)
    if @aggregate.save
     redirect_to aggregate_path
  else
    render :new
  end
 end

 def destroy
  @aggregate =Aggregate.find(params[:id])
  if @aggregate.user_id == current_user.id
    @aggregate.destroy
  redirect_to aggregates_path
  end
end


  private
  def aggregates_params
   params.require(:aggregate).permit(:ability_id,:ability_point,:period_id,:start_day,:action_point,:self_compliment).merge(user_id: current_user.id)
  end
end
