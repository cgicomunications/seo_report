class Phase5sController < ApplicationController
  def index
    @phase5s = Phase5.order(:id).reverse
  end

  def new
    @business = Business.find(params[:business_id])
    @phase5= Phase5.new
  end

  def create
    @business = Business.find(params[:business_id])
    @phase5 = @business.phase5s.new(phase5_params)

    if @phase5.save
      flash[:success] = "Phase 5 added."
    else
      flash[:alert] = "Error occured, phase 5 not added."
    end

    redirect_to business_path(@business)
  end

  def show
    @business = Business.find(params[:business_id])
    @phase5 = Phase5.find( params[:id] )
  end

  def edit
    @business = Business.find(params[:business_id])
    @phase5 = Phase5.find( params[:id] )
  end

  def update
    @business = Business.find(params[:business_id])
    @phase5 = Phase5.find( params[:id] )

    if @phase5.update_attributes(phase5_params)
      flash[:success] = "Phase 5 updated"
    else
      flash[:alert] = "Phase 5 not updated"
    end

    redirect_to  business_phase5_path(@business, @phase5)
  end

  def destroy
    @phase5 = Phase5.find( params[:id] )
    ownerBusiness = @phase5.business_id

    Phase5.find(params[:id]).destroy
    flash[:success] = "Phase 5 entry deleted"
    redirect_to business_path(ownerBusiness)
  end

  private

  def phase5_params
    params.require(:phase5).permit(:mobile_responsive, :mobile_contact_info, :mobile_phone_number,
                                   :mobile_directions, :mobile_font_size, :mobile_buttons,
                                   :mobile_navigation, :mobile_structure)
  end
end
