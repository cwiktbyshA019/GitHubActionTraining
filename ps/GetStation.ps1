Param($postal)

$ApiEndPoint = "http://geoapi.heartrails.com/api/json?method=getStations&postal=${postal}"
$Report = Invoke-RestMethod -Method Get -Uri $ApiEndPoint
$Report.response.station.name