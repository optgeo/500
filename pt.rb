require 'json'
require 'polylabel'

def dump(o)
  print JSON.dump(o), "\n"
end

while gets
  f = JSON.parse($_)
  f[:tippecanoe] = {
    :layer => :pg,
    :minzoom => 10,
    :maxzoom => 14
  }

  pt = Polylabel.compute(f['geometry']['coordinates'])
  geometry = {:type => 'Point', :coordinates => [pt[:x], pt[:y]]}
  r = (
    f['properties']['PTN_2050'] / f['properties']['PTN_2015'] * 100
  ).round

  fp = {
    :type => 'Feature',
    :geometry => geometry,
    :properties => {:r => r, :PTN_2015 => f['properties']['PTN_2015'].round},
    :tippecanoe => {
      :layer => :pt,
      :minzoom => 8,
      :maxzoom => 14
    }
  }
  dump fp

  fp[:properties] = {:r => r}
  fp[:tippecanoe] = {
    :layer => :pt,
    :minzoom => 7,
    :maxzoom => 7
  }
  dump fp

  f['properties'] = {
    'PTN_2015' => f['properties']['PTN_2015'].round,
    'PTN_2050' => f['properties']['PTN_2050'].round,
    'r' => r
  }
  dump f
end

