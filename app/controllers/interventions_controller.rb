require './lib/API/zendesk.rb'
class InterventionsController < ApplicationController

  #before_action :set_intervention, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :js, :json, :html
  

  # GET /interventions
  # GET /interventions.json
  def index
    @intervention = Intervention.all
  end


  # serge exemple 

  # def getBuildingsForCustomer
  #   puts "getBuildingsForCustomer"
  #   puts params
  #   customer_id = params[:customer_id]
  #   buildings = Building.where(customer_id: customer_id)
  #   render json: buildings
  # end

    def new       
      @intervention = Intervention.new
      logger.info("INTERVENTIONS CONTROLLER ")        
    end

    def get_buildings
      customer_id = params[:customer_id]
      buildings = Building.where(customer_id: customer_id)
      render json: buildings
    end
   
    # def get_buildings
    #     building_id = params[:building_id]
    #     batteries = Battery.where(building_id: building_id)
    #     render json: batteries
    # end
 
    def get_columns
      column_id = params[:column_id]
      elevators = Elevator.where(column_id: column_id)
      render json: elevators
    end
    
    def get_batteries
      battery_id = params[:battery_id]
      columns = Column.where(battery_id: battery_id)
      render json: columns
    end


    def create

    authorId         = params['intervention_author']
    customerId       = params['intervention_customer_id']
    buildingId       = params['intervention_building_id']
    batteryId        = params['intervention_battery_id']
    columnId         = params['intervention_column_id']
    elevatorId       = params['intervention_elevator_id']
    employeeId       = params['intervention_employee_id_']
    descriptionInt   = params['intervention_description']

    @intervention = Intervention.new

    @intervention.author_id     = authorId
    @intervention.customer_id   = customerId
    @intervention.building_id   = buildingId
    @intervention.battery_id    = batteryId
    @intervention.column_id     = columnId
    @intervention.elevator_id   = elevatorId
    @intervention.employee_id   = employeeId
    @intervention.report        = descriptionInt

    @intervention.save!
    @intervention.interventions
    redirect_to quote_confirm_path
    end    
  
            
  # GET /interventions/1
  # GET /interventions/1.json
    def show
    end
      
  # GET /interventions/new
    def new
      @intervention = Intervention.new
    end
    
  # GET /interventions/1/edit
    def edit
    end
  
  # POST /interventions
  # POST /interventions.json
    def create
      @intervention = Intervention.new(intervention_params)
      
      respond_to do |format|
        if @intervention.save
          format.html { redirect_to @intervention, notice: 'Intervention was successfully created.' }
          format.json { render :show, status: :created, location: @intervention }
        else
          format.html { render :new }
          format.json { render json: @intervention.errors, status: :unprocessable_entity }
        end
      end
    end
  
  # PATCH/PUT /interventions/1
  # PATCH/PUT /interventions/1.json
    def update
      respond_to do |format|
        if @intervention.update(intervention_params)
          format.html { redirect_to @intervention, notice: 'Intervention was successfully updated.' }
          format.json { render :show, status: :ok, location: @intervention }
        else
          format.html { render :edit }
          format.json { render json: @intervention.errors, status: :unprocessable_entity }
        end
      end
    end
  
  # DELETE /interventions/1
  # DELETE /interventions/1.json
    def destroy
      @intervention.destroy
      respond_to do |format|
        format.html { redirect_to interventions_url, notice: 'Intervention was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervention
      @intervention = Intervention.find(params[:id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def intervention_params
      params.fetch(:intervention, {})
    end
  
end
