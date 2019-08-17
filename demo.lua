local function PlugVer(plg,mod,fmt)
local Info,PVer,A,P
  if mod == 1 then P=far.FindPlugin("PFM_GUID",win.Uuid(plg)) else P=far.FindPlugin("PFM_MODULENAME",plg) end
       Info=far.GetPluginInformation(P);
           A=Info.GInfo.Version;
   if fmt == 1 then PVer=A[1].."."..A[2].."."..A[3] else PVer=A[1].."."..A[2].."."..A[3].."."..A[4] end
  return PVer
end

far.Message(PlugVer("9D4A59D9-AD2D-478C-8F66-7D233CBB788D",1,1),"Image Viewer version:")
far.Message(PlugVer("E186306E-3B0D-48C1-9668-ED7CF64C0E65",1),"Integrity Checker version:")
far.Message(PlugVer("4EBBEFC8-2084-4B7F-94C0-692CE136894D",1),"Macro Browser version:")
far.Message(PlugVer(win.GetEnv("FARHOME").."\\plugins\\emenu\\EMenu.dll",2),"EMenu version:")