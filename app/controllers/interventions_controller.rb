require './lib/API/zendesk.rb'
class InterventionsController < ApplicationController
  before_action :set_intervention, only: [:show, :edit, :update, :destroy]
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
      
    logger.info("INTERVENTIONS CONTROLLER ")
    
    
  end

  def get_buildings
    logger.info("Get buildings")
  end

  def index
    if request.xhr?
      respond_to do |format|
      format.json do
        customer_id = params[:id]
        @buildings = Building.where(customer_id: customer_id)
        
        logger.info(@buildings)

        response = {add_update: @buildings}
        render json: response
      end
    end
  end
  
  def get_batteries
    if request.xhr?
      respond_to do |format|
      format.json do
        battery_id = params[:id]
        @batteries = Battery.where(building_id: battery_id)
        
        logger.info(@batteries)

        response = {add_update: @batteries}
        render json: response
        end
      end
    end
  end

  def get_columns
      # logger.info("Get Columns -------------")
      if request.xhr?
        respond_to do |format|
        format.json do
          column_id = params[:id]
          @columns = Column.where(column_id: column_id)
          
          logger.info(@columns)

          response = {add_update: @columns}
          render json: response
        end
      end
    end
  end

  def get_elevators
      if request.xhr?
        respond_to do |format|
        format.json do
          elevator_id = params[:id]
          @elevators = Elevator.where(elevator_id: elevator_id)
          
          logger.info(@elevators)

          response = {add_update: @elevators}
          render json: response
        end
      end
    end
  end


  
  def buildingValue
    
    
    if params[:id].present?
        @buildings = Customer.find(params[:id]).buildings
    else
      @buildings = Customer.all
    end
    if request.xhr?
        respond_to do |format|
            format.json {
              render json: {buildings: @buildings}
            }
          end
        end
      end

      def batteryValue
        
        
        if params[:id].present?
          @batteries = Building.find(params[:id]).batteries
        else
          @batteries = Building.all
        end
        if request.xhr?
          respond_to do |format|
            format.json {
              render json: {batteries: @batteries}
            }
          end
        end
      end
      
      def columnValue
        
        
        if params[:id].present?
          @columns = Battery.find(params[:id]).columns
        else
          @columns = Battery.all
        end
        if request.xhr?
          respond_to do |format|
            format.json {
              render json: {columns: @columns}
            }
          end
        end
      end
      
      def elevatorValue
        
        
      if params[:id].present?
        @elevators = Column.find(params[:id]).elevators
      else
        @elevators = Column.all
      end
      if request.xhr?
        respond_to do |format|
          format.json {
                  render json: {elevators: @elevators}
                }
              end
            end
          end
        end
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
end
# end
# @interventions = Intervention.new
# @customers = Customer.all
# @test = Customer.find()
# @buildings = Customer.find(params[:id]).buildings
# @batteries = Battery.all
# @columns = Column.all
# @elevators = Elevator.all
