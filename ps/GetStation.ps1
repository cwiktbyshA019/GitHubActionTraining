<#
郵便番号を入力すると最寄り駅名を返します。
このスクリプトは「HeartRails Geo API」(https://geoapi.heartrails.com/api.html)を利用しています
#>

Param($postal)

$ApiEndPoint = "http://geoapi.heartrails.com/api/json?method=getStations&postal=${postal}"
$Report = Invoke-RestMethod -Method Get -Uri $ApiEndPoint
$Report.response.station.name