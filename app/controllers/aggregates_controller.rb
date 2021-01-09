class AggregatesController < ApplicationController

  def index
   @aggregates = current_user.aggregates.all.order(created_at: :desc)
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
     redirect_to aggregates_path
  else
    render :new
  end
 end

 def search
@aggregates = current_user.aggregates.all
 end

 def edit
  @aggregate = Aggregate.find(params[:id]) 
 end

 def update
  @aggregate = Aggregate.find(params[:id])
  if @aggregate.update(aggregates_params)
    redirect_to aggregates_path
  else
    render :edit
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
   params.require(:aggregate).permit(:ability_id,:result_comment,:period_id,:start_day,:action_point,:self_compliment).merge(user_id: current_user.id)
  end

end
