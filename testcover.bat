:: test coverage using OpenCover and ReportGen

:: for setting PATH or similar
IF EXIST testcover.user.bat (
  call testcover.user.bat
)

OpenCover.Console.exe ^
  -target:"vstest.console.exe" ^
  -targetargs:"SimpleTestTests\bin\Debug\SimpleTestTests.dll" ^
  -coverbytest:"*SimpleTestTests.dll" ^
  -register:user ^
  -output:opencover.xml ^
  -skipautoprops ^
  -hideskipped:Filter;MissingPdb;Attribute

:: alternatively, run with
:: -target:"mstest.exe" ^
:: -targetargs:"/testcontainer:SimpleTestTests\bin\Debug\SimpleTestTests.dll" ^
  
ReportGenerator.exe -reports:opencover.xml -targetDir:CoverReport -Reporttypes:Html;Badges
