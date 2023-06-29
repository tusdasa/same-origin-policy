for /r %~dp0 %%a in (*.txt) do (
	echo "%%a%ESP_EXT_NAME%"
	plantuml -teps "%%a" 
)