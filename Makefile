pmtiles: 
	ruby stream.rb | sh | \
	tippecanoe -f -y MESH_ID -y SHICODE -y PTN_2015 -y PTN_2020 -y \
	PTN2025 -y PTN_2030 -y PTN_2035 -y PTN_2040 -y PTN_2045 -y PTN_2050 -o \
	500.pmtiles --minimum-zoom=10 --maximum-zoom=14
add: 
	ipfs add --progress 500.pmtiles
pin:
	ipfs pin add --progress QmbAq2vBTYwiBde2pidMg8ud2EyKhenVYm6Uumq5n3UUMy

