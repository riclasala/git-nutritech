<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| ----------------------------------------------------------
| NOTE : //dont put it on top (:any) will conflict others
| ----------------------------------------------------------
*/
$route['login'] = 'login/index';
$route['logout'] = 'login/logout';

$route['members/login'] = 'members/index';
$route['members/logout'] = 'members/logout';

$route['carts'] = 'carts/index';
$route['checkout'] = 'carts/checkout';
$route['callback'] = 'carts/callback';

$route['membership'] = 'idcf/view';
$route['idcf_confirmation'] = 'idcf/idcf_membership';

$route['members/membership'] = 'idcf/view';
$route['members/idcf_confirmation'] = 'idcf/idcf_membership';

$route['booster'] = 'items/booster';
$route['first_class'] = 'items/first_class';
$route['fastbreak'] = 'items/fastbreak';
$route['specials'] = 'items/specials';
$route['other_promo'] = 'items/other_promo';

/* LOAD DATABASE */
$route['load_items'] = 'items/load_items';
$route['load_usdrate'] = 'items/load_usdrate';
$route['load_packages'] = 'items/load_packages';
$route['load_promos'] = 'items/load_promo';
$route['load_breakdowns'] = 'items/load_breakdown';

$route['load_distributors'] = 'login/load_distributors'; 

$route['cookware_specials'] = 'items/item_list/1'; 
$route['touch_of_class'] = 'items/item_list/4'; 
$route['fine_bone_china'] = 'items/item_list/6'; 
$route['cyrstal'] = 'items/item_list/5'; 
$route['tableware'] = 'items/item_list/7';
$route['cutlery'] = 'items/item_list/12';
$route['food_processing'] = 'items/item_list/3';
$route['air_purification'] = 'items/item_list/14';
$route['kitchen_accessories'] = 'items/item_list/2';
$route['water_filtration'] = 'items/item_list/8';

/* MEMBER PAGE */
$route['members/carts'] = 'carts/index';
$route['members/checkout'] = 'carts/checkout';

$route['members'] = 'items/home';
$route['members/booster'] = 'items/booster';
$route['members/first_class'] = 'items/first_class';
$route['members/fastbreak'] = 'items/fastbreak';
$route['members/specials'] = 'items/specials';
$route['members/other_promo'] = 'items/other_promo';

$route['members/cookware_specials'] = 'items/item_list/1'; 
$route['members/touch_of_class'] = 'items/item_list/4'; 
$route['members/fine_bone_china'] = 'items/item_list/6'; 
$route['members/cyrstal'] = 'items/item_list/5'; 
$route['members/tableware'] = 'items/item_list/7';
$route['members/cutlery'] = 'items/item_list/12';
$route['members/food_processing'] = 'items/item_list/3';
$route['members/air_purification'] = 'items/item_list/14';
$route['members/kitchen_accessories'] = 'items/item_list/2';
$route['members/water_filtration'] = 'items/item_list/8';

$route['default_controller'] = 'items/home';
$route['(:any)'] = 'pages/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;