class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy, :attend, :attend_delete]
  before_action :categories, :states


  # GET /events
  # GET /events.json
  def index
    @events = Event.order(params[:sort])

    @lat = params[:lat]
    @long = params[:long]
    category_id = params[:categories]
    puts "selected category id #{category_id} param_data_type: #{category_id.class}"

    if category_id != nil
      category_id = category_id.to_i

      new_search = []
      @events.each do |event|
        if event.category_id == category_id
          new_search.push(event)
        end
      end
      @events = new_search
    end


  end

  # GET /events/1
  # GET /events/1.json
  def show
    puts "event details #{@event}"
    puts "show the cat number of url = #{@cat}"
  end


  # GET /events/new
  def new
    @event = Event.new
    @categories = Category.order(params[:sort])
    @states = StatesDropDown.states
  end


  # GET /events/1/edit
  def edit

  end

  # POST /events
  # POST /events.json
  def create

    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end



  end



  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def attend
    @event.users << current_user
    @event.save
    redirect_to @event
  end


  def attend_delete
    current_user.events.delete(@event)
    redirect_to @event
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :category_id, :user_id, :date, :street_address, :city, :state, :zipcode, :description, :event_image)
    end

    def categories
      @categories = Category.all
    end

    def categories
      @categories = Category.all
    end

    def states
      @states = StatesDropDown.states
    end

end
