class TestController < ApplicationController
  def test
    render json: {yay: "you made it!", hooray: "we're here!"}
  end

  def json
    feats = [{
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [-77.03238901390978, 38.913188059745586]
      },
      properties: {
        title: "Mapbox DC",
        icon: "black"
      }
    },
    {
      type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [-122.414, 37.776]
      },
      properties: {
        title: "Mapbox SF",
        icon: "blue"
      }
    }]
    render json: {
      id: "points",
      type: "symbol",
      source: {
        type: "geojson",
        data: {
          type: "FeatureCollection",
          features: feats
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
