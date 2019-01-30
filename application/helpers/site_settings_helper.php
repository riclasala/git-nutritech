<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function _ip_url(){
	$client_ip = _check_ip();
	if($client_ip == "122.2.48.48"){
		$server_ip = "192.168.1.157:8080";
	}else {
		$server_ip = "122.2.48.48:8080";
	}
	return $server_ip;
}

function _check_ip(){
	$jsondata = file_get_contents('http://ipinfo.io');
	$json = json_decode($jsondata, TRUE);
	
	return $json['ip'];
}

function _get_dollar_exrate(){
	$jsondata = file_get_contents('http://free.currencyconverterapi.com/api/v5/convert?q=USD_PHP&compact=y');
	$json = json_decode($jsondata, TRUE);
	return $json['USD_PHP']['val'];
}