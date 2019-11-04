class DatapointsController < ApplicationController
  def index
    datapoints = Datapoint.all
    render json: datapoints.to_json(include: [:language])
  end

  def for_feature
    datapoints = Datapoint.all.select {|dp| "#{dp.feature_id}" == params[:id]}
    render json: datapoints.to_json(include: [:language])
  end
end
