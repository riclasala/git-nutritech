<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function _generate_random_string($length){
	$characters = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	$randomstring = '';
	for($i = 0; $i < $length; $i++){
		$randomstring .= $characters[rand(0, strlen($characters) - 1)];
	}
	return $randomstring;
}