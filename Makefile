build: clean
	msbuild /t:Rebuild /p:Configuration=Release
	
clean:
	msbuild /t:Clean /p:Configuration=Release

nuget-pack: build
	nuget pack Xamarin.AuthX.nuspec

nuget-push:
	# example usage: VER=1.7.0.1 make nuget-push
	nuget push Xamarin.AuthX.${VER}.nupkg -Source https://api.nuget.org/v3/index.json