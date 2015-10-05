class RecordsController < ApplicationController

  def index
    # @records = Record.all
    render json: Record.all
  end

  def show
    render json: Record.find_by(id: params[:id])
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entitiy
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    head :no_content
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entitiy
    end
  end

  private

  def record_params
    params.require(:record).permit(:title, :date, :amount)
  end
end
