require_dependency "phcdevworks_accounts/application_controller"

module PhcdevworksAccounts
  class Admin::PlansController < ApplicationController
    before_action :set_admin_plan, only: [:show, :edit, :update, :destroy]

    # GET /admin/plans
    def index
      @admin_plans = Admin::Plan.all
    end

    # GET /admin/plans/1
    def show
    end

    # GET /admin/plans/new
    def new
      @admin_plan = Admin::Plan.new
    end

    # GET /admin/plans/1/edit
    def edit
    end

    # POST /admin/plans
    def create
      @admin_plan = Admin::Plan.new(admin_plan_params)

      if @admin_plan.save
        redirect_to @admin_plan, notice: 'Plan was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/plans/1
    def update
      if @admin_plan.update(admin_plan_params)
        redirect_to @admin_plan, notice: 'Plan was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/plans/1
    def destroy
      @admin_plan.destroy
      redirect_to admin_plans_url, notice: 'Plan was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_admin_plan
        @admin_plan = Admin::Plan.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def admin_plan_params
        params.require(:admin_plan).permit(:admin_plan_name, :admin_plan_price, :admin_plan_description)
      end
  end
end
