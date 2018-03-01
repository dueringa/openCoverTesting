:: test coverage using OpenCover and ReportGen

:: for setting PATH or similar
IF EXIST testcover.user.bat (
  call testcover.user.bat
)

OpenCover.Console.exe ^
  -target:"vstest.console.exe" ^
  -targetargs:"SimpleTestTests\bin\Debug\SimpleTestTests.dll" ^
  -coverbytest:"SimpleTestTests.dll" ^
  -register:user ^
  -output:opencover.xml ^
  -filter:"+[*]* -[SimpleTestTests]*" ^
  -skipautoprops ^
  -hideskipped:Filter;MissingPdb;Attribute

ReportGenerator.exe -reports:opencover.xml -targetDir:CoverReport -Reporttypes:Html;Badges