-- Switch active panel then change disk like Total Commander
-- v1.0, Init version
-- VictorVG, 03.02.2019 02:49:45 +0300

Macro{
  id="692846CB-53D8-43B2-A3C0-D180E65246B9";
  area="Shell Info QView Tree";
  key="AltF1";
  description="Set leftpanel active";
  priority=60;
  action=function() if APanel.Left then Keys("AltF1") else Keys("Tab AltF1") end; end;
}

Macro{
  id="B72092ED-1431-4747-9F9A-D9851D2CEF78";
  area="Shell Info QView Tree";
  key="AltF2";
  description="Set right panel active";
  priority=60;
  action=function() if APanel.Left then Keys("Tab AltF2") else Keys("AltF2") end; end;
}