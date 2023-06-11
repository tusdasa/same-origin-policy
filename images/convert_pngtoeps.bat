set ESP_EXT_NAME=.eps
for /r %~dp0 %%a in (*.png) do (
	echo "%%a%ESP_EXT_NAME%"
	bmeps -c "%%a" "%%a%ESP_EXT_NAME%"
)