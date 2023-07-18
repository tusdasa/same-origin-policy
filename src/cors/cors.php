<?php
// 设置响应头
header('Content-type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST,GET,OPTIONS,DELETE,GET');
header('Access-Control-Allow-Headers: Accept,Content-Type,User-Agent');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Max-Age: 86400');
$req_method = $_SERVER['REQUEST_METHOD'];

if ($req_method == "OPTIONS") {
	 http_response_code('204');
	 echo "";
	 return;
}


echo json_encode(
	[
				"code"    =>  200,
				"message" =>  "success",
				"method"  =>  $req_method
	]
);