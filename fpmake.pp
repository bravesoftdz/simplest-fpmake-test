program fpmake;
uses
  { It seems that FPC 3.1.1 requires thread support for FpMkUnit. }
  {$ifdef VER3_1} CThreads, {$endif}
  SysUtils, FpMkUnit;
var
  P: TPackage;
begin
  with Installer do
  begin
    P := AddPackage('test-package');
    P.Targets.AddUnit('testunit.pas');
    Run;
  end;
end.
