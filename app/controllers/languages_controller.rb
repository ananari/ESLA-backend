class LanguagesController < ApplicationController
  def index
    languages = Language.all
    render json: languages
  end

  def show
    language = Language.find_by(iso: params[:id])
    render json: language
  end

  def geojson
    language = Language.find_by(iso: params[:id])
    render json: {
      id: "points",
      type: "symbol",
      source: {
        type: "geojson",
        data: {
          type: "FeatureCollection",
          features: [{
            type: "Feature",
            geometry: {
              type: "Point",
              coordinates: [language.longitude, language.latitude]
            },
            properties: {
              title: language.name,
              icon: "black"
            }
          }]
        }
      },
      layout: {
        "icon-image" => "{icon}",
        "text-field" => "{title}",
        "text-font" => ["Open Sans Semibold", "Arial Unicode MS Bold"],
        "text-offset" => [0, 0.6],
        "text-anchor" => "top"
      }
    }
  end
end


