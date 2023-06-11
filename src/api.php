<?php
// 设置响应头
header('Content-type: application/json');


header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: GET,POST');
header('Access-Control-Allow-Credentials: true');

$req_method = $_SERVER['REQUEST_METHOD'];
echo json_encode(
	[
				"code"    =>  200,
				"message" =>  "success",
				"method"  =>  $req_method
	]
);