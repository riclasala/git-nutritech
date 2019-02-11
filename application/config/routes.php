<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| ----------------------------------------------------------
| NOTE : //dont put it on top (:any) will conflict others
| ----------------------------------------------------------
*/
$route['login'] = 'login/index';
$route['members/login'] = 'members/index';

$route['carts'] = 'carts/index';
$route['checkout'] = 'carts/checkout';

$route['membership'] = 'idcf/view';
$route['idcf'] = 'idcf/idcf_membership/$1';

$route['home'] = 'items/home';
$route['booster'] = 'items/booster';
$route['first_class'] = 'items/first_class';
$route['fastbreak'] = 'items/fastbreak';
$route['specials'] = 'items/specials';
$route['other_promo'] = 'items/other_promo';

/* LOAD DATABASE */
$route['load_items'] = 'items/load_items';
$route['load_usdrate'] = 'items/load_usdrate';
$route['load_packages'] = 'items/load_packages';
$route['load_promo'] = 'items/load_promo';
$route['load_breakdown'] = 'items/load_breakdown';

$route['items/(:any)'] = 'items/item_list/$1'; 
$route['default_controller'] = 'items/home';
$route['(:any)'] = 'pages/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;