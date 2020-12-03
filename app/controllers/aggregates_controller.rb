class AggregatesController < ApplicationController

  def index
    @aggregate = Aggregate.new
  end

  def new
  @aggregate = Aggregate.new
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
   params.require(:aggregate).permit(:ability_id,:ability_point,:continuation_data).merge(user_id: current_user.id)
  end
end
