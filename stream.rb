1.upto(47) {|i|
  pref = sprintf("%02d", i) 
  path = "/vsizip/downloads/500m_mesh_suikei_2018_shape_#{pref}.zip/" +
    "500m_mesh_2018_#{pref}.shp"
  cmd = "ogr2ogr -f GeoJSONSeq /vsistdout/ #{path}"
  print cmd, "\n"
}

