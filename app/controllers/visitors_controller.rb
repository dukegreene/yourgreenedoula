class VisitorsController < ApplicationController

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(visitor_params)

    respond_to do |format|
      if @visitor.save
        VisitorMailer.thank_you_email(@visitor).deliver
        format.html { redirect_to root_url, notice: 'Visitor was successfully created.' }
        format.json { render :show, status: :created, location: @visitor }
      else
        format.html { render :new }
        format.json { render json: @visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def visitor_params
      params.require(:visitor).permit(:name, :email, :phone)
    end
end
