<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Max-Age: 1000");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
header("Access-Control-Allow-Methods: PUT, POST, GET, OPTIONS, DELETE");

$server = 'localhost';
$username = 'postgres';
$password = 'ainaddin';
$db_name = 'survey_application';

$dbconn = pg_connect("host=$server port=5432 dbname=$db_name user=$username password=$password");


?>