:: Clean the output folder
if exist .\output rm .\output\*.*

:: Create the output folder, if it doesn't exist
if not exist .\output md .\output

:: Build NuGet package
.\tools\nuget pack ..\src\AtleX.Web.Config.nuspec -OutputDirectory .\output\