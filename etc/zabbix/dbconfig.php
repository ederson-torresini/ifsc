<?php

global $DB;

$DB["TYPE"]      = "mysql";
$DB["SERVER"]    = "localhost";
$DB["PORT"]      = "0";
$DB["DATABASE"]  = "zabbix";
$DB["USER"]      = "zabbix";
$DB["PASSWORD"]  = "zabbix";
$ZBX_SERVER      = "127.0.0.1";
$ZBX_SERVER_PORT = "10051";

$IMAGE_FORMAT_DEFAULT    = IMAGE_FORMAT_PNG;


if($DB["TYPE"] == "mysql") 
	$DB["TYPE"] = "MYSQL";

if($DB["TYPE"] == "pgsql")
	$DB["TYPE"] = "POSTGRESQL";

if($DB["TYPE"] == "sqlite3")
	$DB["TYPE"] = "SQLITE3";
?>
