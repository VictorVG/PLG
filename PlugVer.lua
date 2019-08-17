-- PlugVer() - retrive Far plug-ins version string
--
-- Parameters (plg,mod[,fmt])
-- plg - GUID or full path to the plugin DLL
-- mod - 1 or 2 flag of type plug: 1 - GUID, 2 - path to the DLL,
-- fmt - response line format: 0 - Major.Minor.Build.Revision; 1 - Major.Minor.Build.
-- By default, or if the fmt parameter is omitted then Major.Minor.Build.Revision
--
-- Returns:
-- 
-- Version string of the plugin in to format "Major.Minor.Build [.Revision]" or "nil" if error.
--
-- Notes:
--
-- The plugin must be installed in your copy of Far!
--
-- Usage:
--
-- PlugVer("GUID",1[,0|1}) receiving the plugin version with the specified GUID;
-- PlugVer("Path",2[,0|1}) getting the plugin version with the full path to the DLL
--
-- Examples:
--
-- far.Message(PlugVer("9D4A59D9-AD2D-478C-8F66-7D233CBB788D",1,0),"Version:")
-- far.Message(PlugVer(win.GetEnv("FARHOME").."\\plugins\\imageview\\ImageView.dll",2,1),"Version:")
--
-- Also see demo.lua for more examples.
--
-- History:
--
-- Initial release
-- v1.0, VictorVG, 08.16.2019 22:53:34 +0300
-- Refactoring
-- v1.1, VictorVG, 08.16.2019 22:53:34 +0300
-- Refactoring
-- v1.2, VictorVG, 08/17/2019 06:16:44 +0300
 
local function PlugVer(plg,mod,fmt)
local Info,PVer,A,P
  if mod == 1 then P=far.FindPlugin("PFM_GUID",win.Uuid(plg)) else P=far.FindPlugin("PFM_MODULENAME",plg) end
       Info=far.GetPluginInformation(P);
           A=Info.GInfo.Version;
   if fmt == 1 then PVer=A[1].."."..A[2].."."..A[3] else PVer=A[1].."."..A[2].."."..A[3].."."..A[4] end
  return PVer
end 