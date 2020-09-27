build: clean
	msbuild /t:Rebuild /p:Configuration=Release
	
clean:
	msbuild /t:Clean /p:Configuration=Release