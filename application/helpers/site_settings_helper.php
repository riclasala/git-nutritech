<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function _ip_url(){
	$prev_ip = $_SESSION['ip_address'];
	
	$current_ip = $_SERVER['REMOTE_ADDR'];
	$_SESSION['ip_address'] = $current_ip;

	if($prev_ip == $current_ip){
		$server_ip = $_SESSION['server_ip'];
	} else {
		$server_ip = "122.2.48.48:8080";
		$client_ip = _check_ip();
		if($client_ip == "122.2.48.48") {
			$server_ip = "192.168.1.157:8080";
		}
		$_SESSION['server_ip'] = $server_ip;
	}
	return $server_ip;
}

function _check_ip(){
	$jsondata = @file_get_contents('http://ipinfo.io');
	if($jsondata === FALSE) {
		$client_ip = "122.2.48.48";
	} else {
		$json = json_decode($jsondata, TRUE);
		$client_ip = $json['ip'];
	}
	return $client_ip;
}

function _get_dollar_exrate(){
	$jsondata = file_get_contents('http://free.currencyconverterapi.com/api/v5/convert?q=USD_PHP&compact=y');
	$json = json_decode($jsondata, TRUE);
	return $json['USD_PHP']['val'];
}