class QuotesController < ApplicationController
  
  
  
  def new
    @quote = Quote.new
  end

  def create

    typeOfBuilding = params['Type_of_building']

    residentialApartmentNumber = params['Residential_apartment_number']
    residentialFloorNumber = params['Residential_floor_number']
    residentialUndergroundNumber = params['Residential_underground_number']

    commercialFloorNumber = params['Commercial_floor_number']
    commercialStoreNumber = params['Commercial_store_number']
    commercialUndergroundNumber = params['Commercial_underground_number']
    commercialElevCageNumber = params['Commercial_elevCage_number']
    commercialParkPlaceNumber = params['Commercial_parkPlace_number']

    corporateCompanieNumber = params['Corporate_companie_number']
    corporateFloorNumber = params['Corporate_floor_number']
    corporateUndergroundNumber = params['Corporate_underground_number']
    corporateParkPlaceNumber = params['Corporate_parkPlace_number']
    corporateOccPerFloorNumber =params['Corporate_OccPerFloor_number']

    hybridStoreNumber = params['Hybrid_store_number']
    hybridFloorNumber = params['Hybrid_floor_number']
    hybridUndergroundNumber = params['Hybrid_underground_number']
    hybridParkplaceNumber = params['Hybrid_parkPlace_number']
    hybridOccPerFloorNumber = params['Hybrid_OccPerFloor_number']
    hybridHourActNumber = params['Hybrid_hourAct_number']

    estCageNumber = params['Est_cage_number']
    range = params['Range']
    unitPrice = params['Unit_price']
    elevatorPrice = params['Elevator_price']
    installationCost =params['Installation_cost']
    totalPrice = params['Total_price']
    

    @quote = Quote.new
    
    @quote.type_of_building = typeOfBuilding
    if typeOfBuilding == 'residential'
      @quote.apartments_number = residentialApartmentNumber
      @quote.floors_number = residentialFloorNumber
      @quote.undergrounds_number = residentialUndergroundNumber
    end

    if typeOfBuilding == 'commercial'
      @quote.floors_number = commercialFloorNumber
      @quote.stores_number = commercialStoreNumber
      @quote.undergrounds_number = commercialUndergroundNumber
      @quote.cage_number = commercialElevCageNumber
      @quote.parking_places = commercialParkPlaceNumber
    end

    if typeOfBuilding == 'corporate'
      @quote.companies_number = corporateCompanieNumber
      @quote.floors_number = corporateFloorNumber
      @quote.undergrounds_number = corporateUndergroundNumber
      @quote.parking_places = corporateParkPlaceNumber
      @quote.occupants_per_floor = corporateOccPerFloorNumber
    end

    if typeOfBuilding == 'hybrid'
      @quote.stores_number = hybridStoreNumber
      @quote.floors_number = hybridFloorNumber
      @quote.undergrounds_number = hybridUndergroundNumber
      @quote.parking_places = hybridParkplaceNumber
      @quote.occupants_per_floor = hybridOccPerFloorNumber
      @quote.open_hours = hybridHourActNumber
    end

    @quote.estimate_cage_number = estCageNumber
    @quote.range_of_elevator = range
    @quote.unit_price = unitPrice
    @quote.elevator_price = elevatorPrice
    @quote.installation_cost = installationCost
    @quote.total_price = totalPrice





    @quote.save!
    # quote_params = params.require(:quote).permit(:type_of_building)
    # quote = Quote.create(quote_params)

    redirect_to quote_confirm_path
  end


  
  
end
