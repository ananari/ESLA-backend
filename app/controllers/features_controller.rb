class FeaturesController < ApplicationController
  def index
    features = Feature.all
    features = features.sort_by{|feat| feat.name}
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