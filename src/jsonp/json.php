<?php
// 设置响应头
// https://segmentfault.com/a/1190000018313378
header('Content-type: application/javascript');
header('X-Content-Type-Options: nosniff');

$Id = isset($_GET['id'])?$_GET['id']:1;
$CallbackMethod = isset($_GET['callback'])?$_GET['callback']:"callback";

echo $CallbackMethod."(".json_encode(
	[
				"rand"    =>  rand(1,9999),
				"message" =>  "success",
				"id"  =>  $Id
	]
).");";