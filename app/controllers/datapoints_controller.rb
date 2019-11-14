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

  def update
    datapoint = Datapoint.find(params[:id])
    datapoint.update(datapoint_params)
    if datapoint.valid?
      render json: datapoint.to_json(include: [:language]), status: :accepted
    else
      render json: {error: "failed to update datapoint"}, status: :not_acceptable
    end
  end

  def for_language
    datapoints = Datapoint.all.select {|dp| "#{dp.language_id}" == params[:id]}
    render json: datapoints.to_json(include: [:feature])
  end

  def for_feature_geojson
    datapoints = Datapoint.all.select {|dp| "#{dp.feature_id}" == params[:id]}
    vals = Feature.find(params[:id]).values.uniq
    valhash = {}
    geopoints = datapoints.map do |dp|
      colour = match_values_to_colours(vals, dp.value)
      valhash[dp.value] = colour
      language = Language.find(dp.language_id)
      {
        latitude: language.latitude,
        longitude: language.longitude,
        title: language.name,
        icon: colour
      }
    end
    render json: {features: geopoints, values: valhash}
    
  end

  private

  def datapoint_params
    params.require(:datapoint).permit(:value, :language_id, :feature_id, :user_id)
  end

  def match_values_to_colours(vals, val)
    colours = ["purple", "blue", "cyan", "green", "yellow", "orange", "red", "pink", "black"]
    index = vals.find_index(val)
    colours[index]
  end

end

# {
#   "type": "Feature",
#   "geometry": {
#     "type": "Point",
#     "coordinates": [-77.03238901390978, 38.913188059745586]
#   },
#   "properties": {
#     "title": "Mapbox DC",
#     "icon": "monument"
#   }
# }, 
# {
# "type": "Feature",
# "geometry": {
# "type": "Point",
# "coordinates": [-122.414, 37.776]
# },
# "properties": {
# "title": "Mapbox SF",
# "icon": "harbor"
# }
# }
