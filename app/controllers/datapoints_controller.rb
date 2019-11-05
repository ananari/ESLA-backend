class DatapointsController < ApplicationController
  before_action :authorized, only: [:create]
  def index
    datapoints = Datapoint.all
    render json: datapoints.to_json(include: [:language])
  end

  def for_feature
    datapoints = Datapoint.all.select {|dp| "#{dp.feature_id}" == params[:id]}
    render json: datapoints.to_json(include: [:language])
  end

  def create
    datapoint = Datapoint.create(datapoint_params)
    if datapoint.valid?
      render json: datapoint.to_json(include: [:language]), status: :created
    else
      render json: {error: "failed to create datapoint"}, status: :not_acceptable
    end 
  end

  def for_language
    datapoints = Datapoint.all.select {|dp| "#{dp.language_id}" == params[:id]}
    render json: datapoints.to_json(include: [:feature])
  end

  private

  def datapoint_params
    params.require(:datapoint).permit(:value, :language_id, :feature_id, :user_id)
  end
end
