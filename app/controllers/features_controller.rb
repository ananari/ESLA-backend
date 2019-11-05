class FeaturesController < ApplicationController
  def index
    features = Feature.all
    render json: features
  end

  def show
    feature = Feature.find(params[:id])
    render json: feature.to_json(include: [:datapoints])
  end

  def values
    feature = Feature.find(params[:id])
    render json: feature.values.uniq
  end

end
