program Yucatan;

{$R *.res}

uses
  Windows,
  SysUtils,
  Dialogs,
  ShellAPI;

var
  exe, params, dir: string;

begin
  exe := ExtractFilePath(ParamStr(0))+'gplay32.exe';
  params := '/N'+ChangeFileExt(ParamStr(0), '');
  dir := ExtractFilePath(ParamStr(0));

  if not FileExists(exe) then
  begin
    ShowMessageFmt('Error: %s not found!', [exe]);
    Exit;
  end;

  ShellExecute(0, 'open', PChar(exe), PChar(params), PChar(dir), SW_NORMAL);
end.
