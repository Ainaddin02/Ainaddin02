<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Max-Age: 1000");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
header("Access-Control-Allow-Methods: PUT, POST, GET, OPTIONS, DELETE");

include 'db.php';

$type = $_POST['typeofgeom'];
$name = $_POST['nameofgeom'];
$stringgeom = $_POST['stringofgeom'];

$add_query = "Insert into public.\"drawnFeature\" (type,name,geom) Values ('$type','$name',ST_GeomFromGeoJSON('$stringgeom'))";

$query = pg_query($dbconn,$add_query);
if ($query){
    echo json_encode(array("statusCode" => 200));
} else {
    echo json_encode(array("statusCode" => 201));
}



?>