class Membership::ChurchServicesController < ApplicationController
  before_action :set_membership_church_service, only: %i[ show edit update destroy ]

  # GET /membership/church_services or /membership/church_services.json
  def index
    @membership_church_services = Membership::ChurchService.all
  end

  # GET /membership/church_services/1 or /membership/church_services/1.json
  def show
  end

  # GET /membership/church_services/new
  def new
    @membership_church_service = Membership::ChurchService.new
  end

  # GET /membership/church_services/1/edit
  def edit
  end

  # POST /membership/church_services or /membership/church_services.json
  def create
    @membership_church_service = Membership::ChurchService.new(membership_church_service_params)

    respond_to do |format|
      if @membership_church_service.save
        format.html { redirect_to @membership_church_service, notice: "Church service was successfully created." }
        format.json { render :show, status: :created, location: @membership_church_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @membership_church_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membership/church_services/1 or /membership/church_services/1.json
  def update
    respond_to do |format|
      if @membership_church_service.update(membership_church_service_params)
        format.html { redirect_to @membership_church_service, notice: "Church service was successfully updated." }
        format.json { render :show, status: :ok, location: @membership_church_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @membership_church_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membership/church_services/1 or /membership/church_services/1.json
  def destroy
    @membership_church_service.destroy
    respond_to do |format|
      format.html { redirect_to membership_church_services_url, notice: "Church service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership_church_service
      @membership_church_service = Membership::ChurchService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def membership_church_service_params
      params.require(:membership_church_service).permit(:date)
    end
end
