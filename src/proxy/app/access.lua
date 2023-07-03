-- 获取http 头

if ngx.var.uri == "/favicon.ico" then
    return
end


--local redis_util = require("redis-util")
local headers = ngx.req.get_headers()
--local redis = redis_util:new()

-- 发送时的时间戳
local timestamp = headers["x-timestamp"]

-- API版本
local apiVersion = headers["x-api-version"]

-- 发行渠道
local appChannel = headers["x-app-channel"]

-- 运行平台
local appPlatform = headers["x-app-platform"]

-- app-build-version
local appBuildVersion = headers["x-build-version"]

-- token
--local token = headers["Authorization"];

local token = ngx.var.arg_token;


if token then
    if redis:exists(token) == 0 then
	    ngx.header['Content-Type']="text/html;charset=utf-8"
	    ngx.say("<p>Invalid sign.</p><p>编程学习&copy;<a href='https://beian.miit.gov.cn/'>陕ICP备14012662号-2</a></p>")
	    ngx.exit(ngx.HTTP_NOT_FOUND)
    end
else
	ngx.header['Content-Type']="text/html;charset=utf-8"
	ngx.say("<p>Invalid sign.</p><p>编程学习&copy;<a href='https://beian.miit.gov.cn/'>陕ICP备14012662号-2</a></p>")
	ngx.exit(ngx.HTTP_BAD_REQUEST)
    return
end
