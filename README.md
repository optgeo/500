# 500
「[国土数値情報（500mメッシュ別将来推計人口データ）](https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-mesh500h30.html)」ベクトルタイル

# PMTiles file location
## CID
QmbAq2vBTYwiBde2pidMg8ud2EyKhenVYm6Uumq5n3UUMy

## On UN Smart Maps Bazaar
https://smb.optgeo.org/ipfs/QmbAq2vBTYwiBde2pidMg8ud2EyKhenVYm6Uumq5n3UUMy

# Demo
## PMTiles Viewer
https://protomaps.github.io/PMTiles/?url=https%3A%2F%2Fsmb.optgeo.org%2Fipfs%2FQmbAq2vBTYwiBde2pidMg8ud2EyKhenVYm6Uumq5n3UUMy#map=10.12/37.3746/137.1729

## Observable
FIXME

# 仕様
## 採用した属性
MESH_ID, SHICODE,　PTN_2015, PTN_2020, PTN_2025, PTN_2030, PTN_2035, PTN_2040, PTN_2045, PTN_2050

## ズームレベル
minzoom=10, maxzoom=14

# How to develop
```zsh
git clone git@github.com:optgeo/500
cd 500
# download zip files
make pmtiles
make add
```

# About the source
「国土数値情報（500mメッシュ別将来推計人口データ）」（国土交通省）を加工して作成
